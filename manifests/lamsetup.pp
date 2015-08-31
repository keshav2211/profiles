class profiles::lamsetup {

$mysqlpwd=hiera('profiles::lamsetup::mysqlpwd')

include ::apache

class { '::mysql::server':
  root_password => "$mysqlpwd",
}

}
