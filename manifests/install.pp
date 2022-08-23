node 'slave1.puppet' {
              package { 'httpd' :
              ensure => installed,
                       }
}

node 'slave2.puppet' {
              package { 'php' :
              ensure => installed,
                       }
}

node 'slave2.puppet' {
              package { 'httpd' :
              ensure => installed,
                       }
}

