# CS331: Assignment 1
# Task-1: DNS Resolver
## Team Information
- **Member 1: REVATHI KATTA, 23110159**
- **Member 2: SAI KEERTHANA PAPPALA, 23110229**

---

## Project Overview
This project implements a **custom DNS Resolver** using Python.

### Client
- Reads a PCAP file.
- Extracts DNS query packets.
- Generates a **custom header (HHMMSSID)** for each query.
- Sends queries with headers to the server.
- Receives resolved IP addresses from the server.
- Logs results into a CSV file.

### Server
- Listens for client queries.
- Extracts custom header and DNS data.
- Applies **time-based rules** and **modulo-based IP selection** from a predefined IP pool.
- Sends resolved IPs back to the client.
- Logs results into CSV and PDF reports.

---

## Custom Header Format
**HHMMSSID**

- **HH** → Hour (24-hour format)  
- **MM** → Minute  
- **SS** → Second  
- **ID** → Query sequence number (00, 01, …)  

**Example:** `12105500` → Hour 12 (afternoon), query ID 00 → selects IP from the afternoon pool.

---

## Folder Structure
```

dns\_resolver/
├─ client.py
├─ server.py
├─ rules.json
├─ README.md
├─ dns\_results\_client.csv
├─ dns\_results\_server.csv
├─ DNS\_Resolver\_Report.pdf
└─ 8.pcap

````

---

## Dependencies
- **Python 3.x**
- [Scapy](https://scapy.readthedocs.io/en/latest/) – for parsing PCAP and DNS packets  
  ```bash
  pip install scapy

- For generating PDF reports
  ```bash
  pip install reportlab
  ```


---

## PCAP File Selection

Choose the correct PCAP file based on team roll numbers:

```
X = (sum of last 3 digits of both team members) % 10 = (159+229)%10= 8
```

Use the file named **8.pcap**.

---

## How to Run

### 1. Start the Server

```bash
python server.py
```

* The server starts on `127.0.0.1:5000`.
* Creates `dns_results_server.csv` and `DNS_Resolver_Report.pdf`.

### 2. Run the Client

```bash
python client.py
```

* Reads the selected PCAP file.
* Sends DNS queries to the server.
* Saves responses in `dns_results_client.csv`.

Make sure the **server** is running before starting the **client**.

---

## Output Files

| File                      | Description                                             |
| ------------------------- | ------------------------------------------------------- |
| `dns_results_client.csv`  | Client log of DNS queries and resolved IPs              |
| `dns_results_server.csv`  | Server log of DNS queries and resolved IPs              |
| `DNS_Resolver_Report.pdf` | PDF report of all queries and resolved IPs |

# Task-2: Traceroute Protocol Behavior  

This repo also contains report and packet captures for **Task-2 (Traceroute Protocol Behavior)** from the Computer Networks lab assignment.  

## Contents
- **Task2_Report.pdf** – Answers to all assignment questions with supporting Wireshark screenshots.  
- **windows_tracert.pcapng** – Wireshark capture of `tracert www.google.com` on Windows (ICMP-based).  
- **linux_traceroute.pcapng** – Wireshark capture of `traceroute www.google.com` on Linux (UDP-based).  

## Summary
- Windows `tracert` uses **ICMP Echo Requests** by default.  
- Linux `traceroute` (default mode) uses **UDP probes to high ports** (33434+).  
- Captures illustrate differences in probe packets, intermediate **ICMP Time Exceeded**, and final-hop responses.  
- Report includes analysis of missing replies (`* * *`), changing probe fields, and firewall scenarios.  

## How to View
Open the `.pcapng` files in **Wireshark**, use display filters like:
- `icmp` – show ICMP Echo/Time Exceeded/Port Unreachable.  
- `udp and udp.dstport >= 33434` – show Linux traceroute probes.  

---


