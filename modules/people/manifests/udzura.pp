class people::udzura {
  include virtualbox
  include vagrant

  $home     = "/Users/${::boxen_user}"
  $my       = "${home}/dev-sample"
  $dotfiles = "${my}/dotfiles"
  
  file { $my:
    ensure  => directory
  }

  #repository { $dotfiles:
  #  source  => 'jbarnette/dotfiles',
  #  require => File[$my]
  #}
}
