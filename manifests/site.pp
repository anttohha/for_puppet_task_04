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

class mymodule { 
        file { "/var/www/html/index.html":
        mode => "0644",
        owner => 'root',
        group => 'root',
        source => 'puppet:///modules/index.html',
    }
}



node 'slave1.puppet'{
  include httpd
  include mymodule
  
    
}

node 'slave2.puppet'{
  include httpd
  include php
  
}
