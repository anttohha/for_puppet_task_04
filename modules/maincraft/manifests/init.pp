class maincraft {   
 
 file { '/opt/minecraft/':
    ensure => directory  
  }  
 
  file { "/opt/minecraft/newjava.rpm":
  source => [
    "https://download.oracle.com/java/18/latest/jdk-18_linux-x64_bin.rpm",
  ]
}

exec {'install_java_rpm' :
    path    => ['/usr/bin', '/usr/sbin', '/bin'],
    command   => "/usr/bin/rpm -ivh /opt/minecraft/newjava.rpm",    
  }
    
  file { "/opt/minecraft/server.jar":
  source => [
    "https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar",
  ]
}

exec {'install_server_jar' :
    path    => ['/usr/bin', '/usr/sbin', '/bin' , '/usr/java/latest/bin'],
    command   => "/usr/java/latest/bin/java -Xmx1024M -Xms1024M -jar /opt/minecraft/server.jar nogui",
    
  }
 
 }




  

