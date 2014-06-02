class logstash_webinar {

  class { "logstash":
    package_url => 'https://download.elasticsearch.org/logstash/logstash/packages/centos/logstash-1.4.1-1_bd507eb.noarch.rpm',
    java_install    => true,
  }

  logstash::configfile { 'configname':
    source => 'puppet:///modules/logstash_webinar/puppet-test.conf',
  }

}
