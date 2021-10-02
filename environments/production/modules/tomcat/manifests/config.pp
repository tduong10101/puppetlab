class tomcat::config inherits tomcat {
    file {$::tomcat::config_path :
        source  => 'puppet:///modules/tomcat/tomcat.conf',
        mode    => '0644',
        owner   => $::tomcat::user,
        group   => $::tomcat::group,
        notify  => Service['tomcat'],
    }
}