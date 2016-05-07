

 class jenkins::install {

   $tomcat_version = hiera('tomcat_version')

   notify{$tomcat_version:}
}
