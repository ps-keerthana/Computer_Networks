#!/usr/bin/env python3

from mininet.net import Mininet
from mininet.node import OVSController
from mininet.cli import CLI
from mininet.log import setLogLevel, info
from mininet.link import TCLink
import subprocess
import time
import os
import re

def setup_nat_and_forwarding_automated():
    # Enable IP forwarding
    subprocess.run(['sudo', 'sysctl', '-w', 'net.ipv4.ip_forward=1'], check=True)
    
    # Find your main internet interface (eth0 or similar)
    # Hardcoded here, change if different on your system
    internet_if = 'eth0'
    
    # Configure NAT
    subprocess.run(['sudo', 'iptables', '-t', 'nat', '-A', 'POSTROUTING', '-o', internet_if, '-j', 'MASQUERADE'], check=True)
    
    # Get all interfaces starting with 's' (usually OVS switches and ports)
    ip_output = subprocess.check_output(['ip', 'link', 'show']).decode()
    # Extract interface names beginning with 's' followed by letter/digit (s1, s1-eth1, ...)
    ovs_interfaces = re.findall(r'^\d+: (\S+):', ip_output, re.MULTILINE)
    ovs_ifaces = [iface for iface in ovs_interfaces if iface.startswith('s')]
    
    # Apply iptables forwarding rules to these interfaces
    for iface in ovs_ifaces:
        subprocess.run(['sudo', 'iptables', '-A', 'FORWARD', '-i', iface, '-j', 'ACCEPT'], check=True)
        subprocess.run(['sudo', 'iptables', '-A', 'FORWARD', '-o', iface, '-m', 'state', '--state', 'RELATED,ESTABLISHED', '-j', 'ACCEPT'], check=True)
    
    print(f"[INFO] NAT and FORWARD rules applied for interfaces: {ovs_ifaces}")


def create_topology():
    net = Mininet(controller=OVSController, link=TCLink)

    info('==================================================\n')
    info('DNS Resolution Assignment Topology Setup\n')
    info('==================================================\n')
    info('*** Adding controller\n')
    net.addController('c0', controller=OVSController)

    info('*** Adding hosts\n')
    h1 = net.addHost('h1', ip='10.0.0.1/24')
    h2 = net.addHost('h2', ip='10.0.0.2/24')
    h3 = net.addHost('h3', ip='10.0.0.3/24')
    h4 = net.addHost('h4', ip='10.0.0.4/24')
    dns = net.addHost('dns', ip='10.0.0.5/24')

    info('*** Adding switches\n')
    s1 = net.addSwitch('s1')
    s2 = net.addSwitch('s2')
    s3 = net.addSwitch('s3')
    s4 = net.addSwitch('s4')

    info('*** Adding links\n')
    net.addLink(h1, s1, bw=100, delay='2ms')
    net.addLink(h2, s2, bw=100, delay='2ms')
    net.addLink(h3, s3, bw=100, delay='2ms')
    net.addLink(h4, s4, bw=100, delay='2ms')

    net.addLink(s1, s2, bw=100, delay='5ms')
    net.addLink(s2, s3, bw=100, delay='8ms')
    net.addLink(s3, s4, bw=100, delay='10ms')

    net.addLink(dns, s2, bw=100, delay='1ms')

    info('*** Starting network\n')
    net.start()

    info('*** Testing connectivity (Part A)\n')
    net.pingAll()

    # ------------- PART B (Default Resolver) --------------------
    # IMPORTANT: For Part B use default system resolver.
    # Comment out the following lines that overwrite /etc/resolv.conf.
    # Also, do NOT start server.py or dns_proxy.py.

    # Uncomment this block for Part B only:
    
    info('*** PART B: Using default system resolver (no custom DNS)\n')
    info('*** Setting hosts to use real/external DNS (8.8.8.8)\n')
    info('*** Enabling IP forwarding and NAT on dns host (10.0.0.5)...\n')
    dns.cmd('sysctl -w net.ipv4.ip_forward=1')
    dns.cmd('iptables -t nat -A POSTROUTING -o dns-eth0 -j MASQUERADE')
    dns.cmd('iptables -A FORWARD -i dns-eth0 -o dns-eth0 -j ACCEPT')

    setup_nat_and_forwarding_automated()
    for host in [h1, h2, h3, h4]:
        host.cmd('echo "nameserver 8.8.8.8" > /etc/resolv.conf')
    for host in [h1, h2, h3, h4]:
        host.cmd('ip route add default via 10.0.0.5')

    

    # ------------- PART C and D (Custom DNS Resolver) --------------------
    # For Parts C and D, uncomment the following block
    # This starts server.py, dns_proxy.py and configures hosts.

    
    # info('\n*** C.1: Starting custom DNS server (server.py) and Proxy (dns_proxy.py) on 10.0.0.5\n')
    # dns.cmd('python3 server.py > /tmp/assignment_server.log 2>&1 &')
    # dns.cmd('python3 dns_proxy.py > /tmp/assignment_proxy.log 2>&1 &')
    # time.sleep(3)
    # proxy_running = dns.cmd('netstat -tuln | grep ":53 "')
    # if proxy_running:
    #     info('*** DNS proxy confirmed to be listening on port 53.\n')
    # else:
    #     info('*** WARNING: DNS proxy may not have started.\n')

    # info('\n*** C.2: Configuring hosts to use custom DNS (10.0.0.5)\n')
    # for host in [h1, h2, h3, h4]:
    #     host.cmd('echo "nameserver 10.0.0.5" > /etc/resolv.conf')

    # info('\n--- h1 /etc/resolv.conf Content (Proof for Screenshot 1) ---\n')
    # h1_conf = h1.cmd('cat /etc/resolv.conf')
    # info(h1_conf + '\n')

    # info('\n C. 3. Testing custom DNS resolution from all hosts (Proof for Screenshot 2) \n')
    # for host, domain in zip([h1, h2, h3, h4], ["google.com", "example.com", "github.com", "stackoverflow.com"]):
    #     dns_result = host.cmd("dig +short " + domain).strip()
    #     info(f"  > {host.name} queried {domain}: {dns_result}\n")
    

    info('\n*** Dumping host connections\n')
    for host in [h1, h2, h3, h4, dns]:
        info(f"{host.name}: {host.IP()}\n")

    info('\n==================================================\n')
    info('*** You may now use the Mininet CLI for further interactions. ***\n')
    info('==================================================\n')
    CLI(net)

    info('\n*** Stopping network\n')
    # For safety, kill server and proxy only if started (UNCOMMENT if Part C/D run)
    # dns.cmd('pkill -f server.py')
    # dns.cmd('pkill -f dns_proxy.py')
    net.stop()


if __name__ == '__main__':
    setLogLevel('info')
    create_topology()
