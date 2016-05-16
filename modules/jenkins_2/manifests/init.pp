# == Class: jenkins
#
#
#
class jenkins_2 {

  $servers_list = hiera('tomcat_servers')
  $looplist = ['a','b','c']
  if $fqdn in $servers_list {
       notify{'in the if condition':}
       loop {
            looplist => $looplist,
          }
  }

  define loop($looplist){
     notify{$looplist:}
  }






}
