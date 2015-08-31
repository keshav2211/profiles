class profiles::gitserver { 

$repohome=hiera('profiles::gitserver::repohome')
$reponames=hiera('profiles::gitserver::reponames')

include ::gitk

class { '::gitk::config':
  repohome => "$repohome",
  }

gitk::gitrepo { $reponames :
  repohome => "$repohome",
  }

}

