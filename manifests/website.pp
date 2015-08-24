class profile::website ( 
	$name=hiera('profile::website::name'),
	$port=hiera('profile::website::port'),
	$docroot=hiera('profile::website::docroot'),
	$htmlname=hiera('profile::website::htmlname'),
    ) {

websites::vhost { "$name":
 port => $port,
 docroot => $docroot,
 htmlname => $htmlname,
 }
