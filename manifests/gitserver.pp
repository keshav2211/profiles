class profiles::gitserver ( $reponames=hiera('profiles::gitserver::reponames') ) {

include ::gitk
include ::gitk::config

gitk::gitrepo { $reponames : }

}

