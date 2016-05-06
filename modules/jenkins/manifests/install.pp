

 class jenkins::install {

   tomcat_version = hiera('tomcat_version')

   notify{'inside install $tomcat_version':}
}
