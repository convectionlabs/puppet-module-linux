# vim: ts=2:et:sw=2:sts=2:fdm=marker:si
#
# Linux Policy
#
class linux(

  $packages = undef,
  $motd     = undef,
  $files    = undef,

) {

  clabs::module::init { $name: }

}

