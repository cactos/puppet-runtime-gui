
class cactos_runtime_gui::config inherits cactos_runtime_gui {


  file {'apache_conf':
    ensure => file,
    path => '/etc/apache2/sites-enabled/cactos_runtime_gui.conf',
    owner  => root,
    group  => root,
    mode   => '0644',
    content => epp('cactos_runtime_gui/cactos_runtime_gui.conf'),
  }


}
