# == Class: jenkins
#
#
#
class jenkins_2 {

  $servers_list = hiera('tomcat_servers')

  if $fqdn in $servers_list {
       notify{'in the if condition':}
  }






}
