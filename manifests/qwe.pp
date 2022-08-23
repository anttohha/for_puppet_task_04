node 'slave1.puppet'{
 -> file { '/var/www/html/':   
        ensure  => directory,   
        source  => 'puppet:///file/'index.html',  
        recurse => true,   
        purge   => true,  
        force   => true, 
    }
}
