$TTL	96400
@	IN	SOA	eman.com. root.eman.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			  86400 )	; Negative Cache TTL
;
@	IN	NS	eman.com.
@	IN	A	13.4.128.2
@	IN	AAAA	2014:5:9:5::3

eman.com.	IN	A	13.4.128.2
zouine.eman.com.	IN	A	13.4.128.2
zouine.eman.com.	IN	AAAA	2014:5:9:5::3
