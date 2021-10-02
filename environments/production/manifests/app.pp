node 'node1','node2' {
    notify{"check_point_app":}
    include ['base','base::config','tomcat']

}
