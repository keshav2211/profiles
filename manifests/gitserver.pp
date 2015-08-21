class profiles::gitserver {

include ::gitk
gitk::gitrepo {['puppet-control-xt', 'gitk', 'profiles', 'roles', 'websites']: }
}
