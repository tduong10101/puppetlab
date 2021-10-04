class tomcat::params {
    
    $user = 'tomcat'
    $group = 'tomcat'
    $config_path = '/etc/tomcat/tomcat.conf'
    $packages = [ 'tomcat', 'tomcat-webapps' ]
    $service_name = 'tomcat'
    $service_state = running
    $catalina_pid = '/var/run/tomcat.pid'
    $shutdown_verbose = 'false'
    $shutdown_wait = '30'
    $security_manager = 'false'
    $catalina_tmpdir = '/var/cache/tomcat/temp'
    $jasper_home = '/usr/share/tomcat'
    $catalina_home = '/usr/share/tomcat'
    $catalina_base = '/usr/share/tomcat'
    $java_home = '/usr/lib/jvm/jre'
    $tomcat_cfg_loaded = '1'
    $xms = "64m"
    $xmx = "128m"
    $maxpermsize = "128M"
    $java_opts = "-Xms${xms} -Xmx${xmx} -XX:MaxPermSize=${maxpermsize} -Djava.security.egd=file:/dev/./urandom"
}