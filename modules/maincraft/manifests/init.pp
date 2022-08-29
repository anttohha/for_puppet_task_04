class maincraft {
 
 file { '/opt/minecraft/':
    ensure => directory
    
 include ::wget

     wget::fetch { 'https://piston-data.mojang.com/v1/objects/f69c284232d7c7580bd89a5a4931c3581eae1378/server.jar':
    destination => '/opt/minecraft/server.jar',    
  }
    
    
  }
 
 }




  

