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
  
  -> file { '/var/www/html/':   
        ensure  => directory,   
        source  => 'puppet:///file/'index.html',  
        recurse => true,   
        purge   => true,  
        force   => true, 
    }
  
  
}

node 'slave2.puppet'{
  include httpd
  include php
  
}
