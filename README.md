# CS331: DNS Resolver Assignment 1

## Team Information
- **Member 1:** [Revathi Katta, 23110159]
- **Member 2:** [Sai Keerthana Pappala, 23110229]

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
````

 * For generating PDF reports
  ```bash
  pip install reportlab
````

* **Windows users:** Install **Npcap** (instead of WinPcap) to work with PCAP files.

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

---

## Notes

* The **custom header** ensures uniqueness of each query.
* **Time-based rules** are applied:

  * Morning (04:00–11:59) → First 5 IPs
  * Afternoon (12:00–19:59) → Middle 5 IPs
  * Night (20:00–03:59) → Last 5 IPs
* Within each pool, the exact IP is chosen using **(Query ID % pool size)**.
* For large PCAP files, parsing may take extra time.

```
