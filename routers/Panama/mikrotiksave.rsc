# nov/05/2023 19:42:37 by RouterOS 7.8
# software id = 
#
/disk
set slot1 slot=slot1
set slot2 slot=slot2
set slot3 slot=slot3
set slot4 slot=slot4
set slot5 slot=slot5
set slot6 slot=slot6
set slot7 slot=slot7
set slot8 slot=slot8
set slot9 slot=slot9
set slot10 slot=slot10
set slot11 slot=slot11
set slot12 slot=slot12
/interface wireless security-profiles
set [ find default=yes ] supplicant-identity=MikroTik
/port
set 0 name=serial0
/routing ospf instance
add disabled=no name=eman4 router-id=13.4.95.254
add disabled=no name=eman6 router-id=13.4.95.254 version=3
/routing ospf area
add area-id=10.10.10.10 disabled=no instance=eman4 name=zouine4
add area-id=10.10.10.10 disabled=no instance=eman6 name=zouine6
/ip address
add address=13.4.224.6/30 interface=ether2 network=13.4.224.4
add address=13.4.224.9/30 interface=ether3 network=13.4.224.8
add address=13.4.224.13/30 interface=ether4 network=13.4.224.12
add address=13.4.95.254/19 interface=ether6 network=13.4.64.0
/ip dhcp-client
add interface=ether1
/ipv6 address
add address=2014:5:9:3::1 interface=ether6
add address=2014:5:9:11::2 interface=ether2
add address=2014:5:9:12::1 interface=ether3
add address=2014:5:9:13::1 interface=ether4
/routing ospf interface-template
add area=zouine4 disabled=no networks=13.4.64.0/19
add area=zouine4 disabled=no networks=13.4.224.4/30
add area=zouine4 disabled=no networks=13.4.224.8/30
add area=zouine4 disabled=no networks=13.4.224.12/30
add area=zouine6 disabled=no networks=2014:5:9:13::/64
add area=zouine6 disabled=no networks=2014:5:9:3::/64
add area=zouine6 disabled=no networks=2014:5:9:11::/64
add area=zouine6 disabled=no networks=2014:5:9:12::/64
