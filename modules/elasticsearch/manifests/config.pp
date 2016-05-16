class elasticsearch::config{

  $es_cluster_name = hiera('es_cluster_name')
  $es_cluster_nodes = hiera('es_cluster_nodes')

  file { "/apps/elasticsearch/config/elasticsearch.yml":
    ensure => present,
    content => template('elasticsearch/elasticsearch.yml.erb'),
    mode   => 0644,
    owner   => 'appuser',
    group  => 'appuser',
  }->
  file { "/apps/elasticsearch/elasticsearch":
    ensure => present,
    content => template('elasticsearch/elasticsearch.erb'),
    mode   => 0644,
    owner   => 'appuser',
    group  => 'appuser',
  }
}