class profiles::website ( 
	$websites=hiera('websites'),
    ) {

$websites.each | $wsite | {

notify { "$wsite":

  message => "$wsite[port]",
  }
 }
}
