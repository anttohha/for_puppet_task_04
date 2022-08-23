node 'slave1.puppet' {
              package { 'httpd' :
              ensure => installed,
                       }
                       
              service { 'httpd' :
              ensure  => running,
              }
}
