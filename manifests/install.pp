class httpd {
  package { 'httpd':
    ensure => latest
  }
  service { 'httpd':
    ensure => running,
    enable => true,
    require => Package['httpd']
  }
}

node 'slave1.puppet'{
  include httpd
}

