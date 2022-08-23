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

node 'slave2.puppet'{
  include httpd 
}
