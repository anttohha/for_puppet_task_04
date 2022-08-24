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

class php {
  package { 'php':
    ensure => latest
  }
}




node 'slave1.puppet'{
  include httpd
  include ::mymodule
    
}

node 'slave2.puppet'{
  include httpd
  include php
  
}
