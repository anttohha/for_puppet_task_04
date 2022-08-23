node 'slave1.puppet' {
              service {'httpd':
              ensure  => running,
              require => Package['httpd'],
  }
}
