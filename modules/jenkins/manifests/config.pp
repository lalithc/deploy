class jenkins::config
{
  notify {'inside config class':}

  file {"/apps/apache-tomcat/bin/tomcat":
           ensure => present,
           content => template('jenkins/tomcat.erb'),
           mode   => 'u=rwx,og=rw',
           owner   => 'nobody',
           group  => 'nobody',

       }
     ->
     exec { "chown -R appuser:appgroup /apps": }

}
