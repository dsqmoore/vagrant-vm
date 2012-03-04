class fonts::microsoft {
  exec { 'accept-msttcorefonts-license':
    command => '/bin/sh -c "echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections"',
  }

  package { 'msttcorefonts':
    ensure  => present,
    require => Exec['accept-msttcorefonts-license'],
  }
}
