  class mymodule {file { '/var/www/html':
        ensure => directory,
        owner => 'vagrant',
        group => 'vagrant',
        
    }file { "/var/www/html/test.txt":
        mode => "0644",
        owner => 'vagrant',
        group => 'vagrant',
        source => 'puppet:///modules/files/index.html',
    }
