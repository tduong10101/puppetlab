class base inherits base::params {
    package { ['tree', 'wget', 'git', 'unzip','ntp']:
    }

    user { 'dojo':
        ensure => absent,
    }
    user { 'deploy':
        ensure      => present,
        uid         => 5001,
        home        => '/home/deploy',
        password    => '$1$mAhvsKAD$ijRnB8rI9CWk91LUpOBcz1',
        managehome  => true,
    }
    service { $::base::ntp_service :
        ensure => running,
        enable => true
    }
    file { '/etc/motd':
        ensure  => present,
        mode    => '0644',
        content => "
        
This server is a property of Terry Duong.

SYSTEM INFO
================

Hostname    : ${::fqdn}
IP Address  : ${::ipaddress}
Memory      : ${::memory['system']['total']}
Cores       : ${::processors['count']}
OS          : ${::os['distro']['description']}

"
    }

}
