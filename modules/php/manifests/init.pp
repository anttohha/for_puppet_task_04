class php {
  package {['httpd', 'php']:
    ensure => installed
  }
  
  file { '/var/www/php':
    ensure => directory
  }
  
  file { '/var/www/php/index.php':
    ensure => file,
    source => 'puppet:///modules/php/index.php'
  }
  
  

 service {'httpd':
    ensure => running
 }
}



  
