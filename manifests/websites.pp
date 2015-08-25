class profiles::websites ( $websites=hiera('profiles::websites::websites') ) {

$websites.each | $website | {

  $webname = $website['webname']
  $port = $website['port']
  $docroot = $website['docroot']
  $htmlname = $website['htmlname']


   lam::virhost { "$webname":
    port     => $port,
    docroot  => $docroot,
    htmlname => $htmlname,
 }

}
}

