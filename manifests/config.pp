# vim: ts=2:et:sw=2:sts=2:fdm=marker:si
#
class linux::config(

  $motd   = $::linux::motd,
  $files  = $::linux::files,

) inherits linux {

  if $motd {
    clabs::config { '/etc/motd':
      content => $motd,
    }
  }

  if $files {
    create_resources('file', $files)
  }

}

