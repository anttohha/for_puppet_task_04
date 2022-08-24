class htmlka {
  package {['httpd']:
    ensure => installed
  }
  
  file { '/var/www/html':
    ensure => directory
  }
  
  file { '/var/www/html/index.html':
    ensure => file,
    source => 'puppet:///modules/files/index.html'
  }
  
 service {'httpd':
    ensure => running
 }
}

node 'slave1.puppet'{
  include htmlka
  
  
    
}
