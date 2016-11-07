# Class: cactos_runtime_gui
# ===========================
#
class cactos_runtime_gui (
 String $runtimeController = $cactos_runtime_gui::params::runtimeController,
 String $runtimeManagement = $cactos_runtime_gui::params::runtimeManagement,
 String $monitoringService = $cactos_runtime_gui::params::monitoringService,
 String $colosseumServer   = $cactos_runtime_gui::params::colosseumServer,
 String $monitoringServer  = $cactos_runtime_gui::params::monitoringServer
)inherits cactos_runtime_gui::params {

  contain cactos_runtime_gui::install
  contain cactos_runtime_gui::config
  Class['::cactos_runtime_gui::install']->
  Class['::cactos_runtime_gui::config']
  #Class['::cactos_runtime_gui::service']

}
