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

class htmlka {    
        file { '/var/www/html/':
             mode => 440,
             owner => root,
             group => root,
             source => "puppet:///modules/files/index.html"
        
        
  }
}


node 'slave1.puppet'{
  include httpd
  include htmlka
    
}

node 'slave2.puppet'{
  include httpd
  include php
  
}
