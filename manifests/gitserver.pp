class profiles::gitserver {

include ::gitk
gitk::gitrepo { hiera('gitreponames') : }

}
