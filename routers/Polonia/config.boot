interfaces {
    ethernet eth0 {
        duplex auto
        hw-id 0c:b7:1c:aa:00:00
        smp_affinity auto
        speed auto
    }
    ethernet eth1 {
        address 13.4.224.18/30
        address 2014:5:9:14::2/64
        duplex auto
        hw-id 0c:b7:1c:aa:00:01
        smp_affinity auto
        speed auto
    }
    ethernet eth2 {
        duplex auto
        hw-id 0c:b7:1c:aa:00:02
        smp_affinity auto
        speed auto
    }
    ethernet eth3 {
        duplex auto
        hw-id 0c:b7:1c:aa:00:03
        smp_affinity auto
        speed auto
    }
    ethernet eth4 {
        duplex auto
        hw-id 0c:b7:1c:aa:00:04
        smp_affinity auto
        speed auto
    }
    ethernet eth5 {
        address 13.4.191.254/19
        address 2014:5:9:6::1/64
        duplex auto
        hw-id 0c:b7:1c:aa:00:05
        smp_affinity auto
        speed auto
    }
    loopback lo {
    }
}
protocols {
    ospf {
        area 10.10.10.10 {
            network 13.4.160.0/19
            network 13.4.224.16/30
        }
        parameters {
            abr-type cisco
            router-id 13.4.191.254
        }
    }
    ospfv3 {
        area 10.10.10.10 {
            interface eth1
            interface eth5
        }
    }
}
service {
    ssh {
        port 22
    }
}
system {
    config-management {
        commit-revisions 20
    }
    console {
        device ttyS0 {
            speed 9600
        }
    }
    host-name vyos
    login {
        user vyos {
            authentication {
                encrypted-password $1$5HsQse2v$VQLh5eeEp4ZzGmCG/PRBA1
                plaintext-password ""
            }
            level admin
        }
    }
    ntp {
        server 0.pool.ntp.org {
        }
        server 1.pool.ntp.org {
        }
        server 2.pool.ntp.org {
        }
    }
    package {
        auto-sync 1
        repository community {
            components main
            distribution helium
            password ""
            url http://packages.vyos.net/vyos
            username ""
        }
    }
    syslog {
        global {
            facility all {
                level notice
            }
            facility protocols {
                level debug
            }
        }
    }
    time-zone UTC
}


/* Warning: Do not remove the following line. */
/* === vyatta-config-version: "cluster@1:config-management@1:conntrack-sync@1:conntrack@1:cron@1:dhcp-relay@1:dhcp-server@4:firewall@5:ipsec@4:nat@4:qos@1:quagga@2:system@6:vrrp@1:wanloadbalance@3:webgui@1:webproxy@1:zone-policy@1" === */
/* Release version: VyOS 1.1.7 */
