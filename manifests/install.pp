# vim: tabstop=2 expandtab shiftwidth=2 softtabstop=2 foldmethod=marker
#
# Install Linux Base OS Software
#
class linux::install inherits linux {

  # Minimal / Core Packages
  $corepkgs = $::osfamily ? {
    'RedHat'  => [
      'redhat-lsb',
      'bash',
      'zsh',
      'wget',
      'dstat',
      'nc',
    ],
    default => undef,
  }

  if $corepkgs {
    clabs::install { $corepkgs: }
  }

}

