class profiles::gitserver ( $reponames=hiera('profiles::gitserver::reponames') ) {

include ::gitk
gitk::gitrepo { $reponames : }

}

