  class mymodule {file { '/var/www/html':
        ensure => directory,
        owner => 'root',
        group => 'root',
        
    }file { "/var/www/html/test.txt":
        mode => "0644",
        owner => 'root',
        group => 'root',
        source => 'puppet:///modules/files/index.html',
    }
