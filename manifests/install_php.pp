class php {
  package { 'php':
    ensure => latest
  }
  service { 'php':
    ensure => running,
    enable => true,
    require => Package['php']
  }
}
