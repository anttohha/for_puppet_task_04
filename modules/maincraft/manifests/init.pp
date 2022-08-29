class maincraft {
   
 
 file { '/opt/minecraft/':
    ensure => directory 
 
  }
  
 

exec {'download_install_java_rpm' :
    path    => ['/usr/bin', '/usr/sbin', '/bin'],
    command   => "/usr/bin/rpm -ivh /opt/minecraft/newjava.rpm.rpm",
    
  }

  
  
  
  file { "/opt/minecraft/server.jar":
  source => [
    "https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar",
  ]
}



 
 }




  

