node 'slave2.puppet' {
              package { 'httpd' :
              ensure => installed,
                       }
}
