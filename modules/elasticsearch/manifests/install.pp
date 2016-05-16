class elasticsearch::install{

  exec { "wget --output-document=/apps/elasticsearch-2.3.2.tar.gz  https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.3.2/elasticsearch-2.3.2.tar.gz":
    creates => "/apps/elasticsearch-2.3.2.tar.gz",
  }->
  exec { "tar zxvf  /apps/elasticsearch-2.3.2.tar.gz -C /apps":
    creates => "/apps/elasticsearch-2.3.2/bin/elasticsearch",
  }->
  exec{ "es_sleep":
    command => "sleep 14",
    path => "/usr/local/bin/:/bin:/usr/sbin",
  }->
  exec { "mv /apps/elasticsearch-2.3.2  /apps/elasticsearch":
    creates => "/apps/elasticsearch/bin/elasticsearch",
  }->
  exec { "rm -rf /apps/elasticsearch-2.3.2.tar.gz":

  }
}