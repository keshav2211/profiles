class profiles::databases {

#data lookups
$databases=hiera('profiles::databases::databases')

$databases.each | $database | {

  $dbname = $database['dbname']
  $dbuser = $database['dbuser']
  $dbpwd = $database['dbpwd']
  
  lam::mysqldb { "$dbname":
    dbuser => $dbuser,
    dbpwd  => $dbpwd,
    
  }

}
}

