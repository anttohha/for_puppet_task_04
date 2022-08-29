class maincraft {
 
 file { '/opt/minecraft/':
    ensure => directory
  }
 
 exec{'retrieve_leiningen':
   command => "/usr/bin/wget https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar -O /opt/minecraft",   
 }


 file{'/opt/minecraft/server.jar':
   require => Exec["retrieve_leiningen"],
 }
}
