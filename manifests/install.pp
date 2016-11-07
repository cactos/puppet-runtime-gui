
class cactos_runtime_gui::install inherits cactos_runtime_gui {


  notify{'install': }

  # create rt controller directory
  file { '/opt/cactos':
    ensure => directory,
  }
  
  class { 'apache':
    default_vhost => false,
    #user => 'apache',
    #group => 'apache',
  }
  class { 'apache::mod::proxy': }
  class { 'apache::mod::rewrite': }

  package{'git':
    ensure => installed,
  }->
  # clone repo
  vcsrepo { '/opt/rui/':
    ensure   => present,
    provider => git,
    source   => 'https://github.com/cactos/Cactos-Runtime.git',
    remote   => 'origin',
    require  => File['/opt/cactos'],
  }


}
