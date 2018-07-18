# vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 foldmethod=marker
#
# This class handles configuring /etc/resolv.conf
#
# NOTE: AWS is using DHCP
#
class linux::bootstrap::resolver(
  $domainname = hiera('system:dns:domain'),
  $searchpath = hiera_array('system:dns:searchpath'),
) {

  $searchdata = inline_template("<%= @searchpath.flatten.join(' ') %>")

}

