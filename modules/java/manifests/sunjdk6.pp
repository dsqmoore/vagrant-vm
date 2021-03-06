class java::sunjdk6 {
  case $operatingsystem {
    'CentOS': {
      include yumrepos::vagrantvms

      package { 'java-1.6.0-sun':
        ensure => present,
        require => Yumrepo['vagrantvms'],
      }

      package { 'java-1.6.0-sun-devel':
        ensure => present,
        require => Package['java-1.6.0-sun'],
      }
    }
    'Ubuntu': {
      include debrepos::java

      package { 'sun-java6-jdk':
        ensure => present,
        require => Class['debrepos::java'],
      }
    }
  }
}

