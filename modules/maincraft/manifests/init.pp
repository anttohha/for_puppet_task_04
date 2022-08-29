class maincraft {

 exec{'retrieve_leiningen':
   command => "/usr/bin/wget -q https://raw.github.com/technomancy/leiningen/stable/bin/lein -O /home/vagrant/bin/lein",
   creates => "/home/vagrant/bin/lein",
 }

 file{'/home/vagrant/bin/lein':
   mode => 0755,
   require => Exec["retrieve_leiningen"],
 }
}
