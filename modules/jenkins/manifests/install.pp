

 class jenkins::install {

   $tomcat_version = hiera('tomcat_version')

   $tomcat_url = hiera('tomcat_url')

   notify{$tomcat_version:}

   file {"/apps":
      ensure => "directory",

    }

    group { "appgroup":
        ensure => present,
        gid => 2000
     }->
     user { "appuser":
         ensure => present,
         gid => "appgroup",
         groups => ["appgroup", "root"],
         membership => minimum,
         shell => "/bin/bash",
     }->
     exec { "wget  --output-document=/apps/$tomcat_version $tomcat_url": }
     ->
     exec { "tar -xvf /apps/$tomcat_version -C /apps": }->
     exec { "mv /apps/apache-tomcat-7.0.69 /apps/apache-tomcat":
       creates => "/apps/apache-tomcat/bin",
       } 



   
}
