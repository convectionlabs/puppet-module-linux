# vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 foldmethod=marker
#
# Bootstrap Linux
#
class linux::bootstrap {

  contain "${name}::resolver"

  class { 'yum':
    stage   => 'bootstrap',
    require => Class["${name}::resolver"]
  }

}

