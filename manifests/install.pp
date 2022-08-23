node 'slave2.puppet' {
              service {'httpd':
              ensure  => running,
              require => Package['httpd'],
  }
}
