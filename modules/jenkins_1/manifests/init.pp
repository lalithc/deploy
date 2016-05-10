# == Class: jenkins
#
#
#
class jenkins_1 {


  case $environment {
    'dev': {
       notify {'inside DEV environment':}
    }
    default:{
      notify {'inside default loop':}
    }

  }


}
