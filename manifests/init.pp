  class mymodule {
       file { "/var/www/html/index.html":
        mode => "0644",
        source => 'puppet:///modules/files/index.html',
    }
