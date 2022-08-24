  class mymodule {
       file { "/var/www/html/index.html":
        source => 'puppet:///modules/index.html',
    }
