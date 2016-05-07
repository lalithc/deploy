class jenkins::service {
 
  notify {'inside service()':}

    exec {"/apps/apache-tomcat/bin/tomcat restart":}
}
