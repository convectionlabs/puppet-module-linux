# vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 foldmethod=marker
#
# Linux RedHat Policy
#
class linux::config::redhat inherits linux {

   # daemons we don't want to run on production systems
   service {
    'yum-updatesd':
      enable  => false,
      ensure  => stopped,
  }

}

