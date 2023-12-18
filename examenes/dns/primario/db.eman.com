$ORIGIN .
$TTL 96400	; 1 day 2 hours 46 minutes 40 seconds
eman.com		IN SOA	eman.com. root.eman.com. (
				81         ; serial
				604800     ; refresh (1 week)
				86400      ; retry (1 day)
				2419200    ; expire (4 weeks)
				86400      ; minimum (1 day)
				)
			NS	eman.com.
			A	13.4.128.2
			AAAA	2014:5:9:5::3
$ORIGIN eman.com.
dns			A	13.4.128.2
			AAAA	2014:5:9:5::3
$TTL 300	; 5 minutes
PC11			A	13.4.16.2
			DHCID	( AAEBHpnoNzh72NU0ijRAZNh1QkdJpohNk8XNU+kt+kWn
				Do0= ) ; 1 1 32
PC3			A	13.4.80.4
			TXT	"311930ba4ed18d8814cfc258048746f73b"
PC4			A	13.4.112.6
			TXT	"316952e66f05f79641c4dbcb82ec617e5f"
			DHCID	( AAEBAcvS8MiaE2nynn/d7C6eu9639fkPwWKHngLFDIkr
				VQc= ) ; 1 1 32
PC5			A	13.4.158.137
			TXT	"316952e66f05f79641c4dbcb82ec617e5f"
			DHCID	( AAEBcLc+WF84Ekb+OY4y8Jwn2jwN3JHMf3tmNSn5B6Ae
				A0M= ) ; 1 1 32
PC6			A	13.4.191.237
			TXT	"311a85d790a7d5d5111eb14c8c4330822e"
			DHCID	( AAEBGZZkdjeAoECBDNlGBAtii6MwaTMevsBERZMCmt8F
				fSo= ) ; 1 1 32
