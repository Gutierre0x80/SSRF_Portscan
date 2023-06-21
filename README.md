# SSRF_Portscan
This project is a portscan for internal ports from an SSRF

<h3>How to use</h3>
1- Download the repository on your machine: git clone https://github.com/Gutierre0x80/SSRF_Portscan.git

2- Go to repository: cd SSRF_Portscan

3- Execute permission for the program: chmod +x portscan.sh

4- Run the program using the following syntax: portscan.sh URL Directory+Vulnerable_Parameter --top-ports or --all-ports
__________________________________________________________________________________

Url: Is the url of the target, ex: http://192.168.0.1/

Directory+Vulnerable_Parameter: Endpoint of one occurs the SSRF, ex: /?get_picture

--top-ports: Will test the top 1000 internal ports

--all-ports: Will test all internal ports
