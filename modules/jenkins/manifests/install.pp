

 class jenkins::install {

   $tomcat_version = hiera('tomcat_version')

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
     exec { "wget  --output-document=/apps/  ": }

   
}
