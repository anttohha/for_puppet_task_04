class maincraft {
   
 
 file { '/opt/minecraft/':
    ensure => directory 
 
  }
  
 

exec {'download_install_java_rpm' :
    path    => ['/usr/bin', '/usr/sbin', '/bin'],
    command => '/usr/bin/wget https://javadl.oracle.com/webapps/download/AutoDL?BundleId=246798_424b9da4b48848379167015dcc250d8d -P /opt/minecraft/;rpm -ivh /opt/minecraft/server.jar',
    
  }

  
  
  
  file { "/opt/minecraft/server.jar":
  source => [
    "https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar",
  ]
}



 
 }




  

