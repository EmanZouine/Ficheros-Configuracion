$ORIGIN .
$TTL 96400	; 1 day 2 hours 46 minutes 40 seconds
eman.com		IN SOA	eman.com. root.eman.com. (
				6          ; serial
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
PC11			A	13.4.0.11
			TXT	"31cc2861afbff6ed3c3c4e14041789eaaf"
PC3			A	13.4.64.11
			TXT	"311930ba4ed18d8814cfc258048746f73b"
PC5			A	13.4.128.11
			TXT	"316952e66f05f79641c4dbcb82ec617e5f"
PC6			A	13.4.96.10
			TXT	"31cc2861afbff6ed3c3c4e14041789eaaf"
