class maincraft {

 exec{'retrieve_leiningen':
   command => "/usr/bin/wget -q https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar -O /opt/minecraft",
   creates => "/opt/minecraft/",
 }

 file{'/opt/minecraft/server.jar':
   mode => 0755,
   require => Exec["retrieve_leiningen"],
 }
}
