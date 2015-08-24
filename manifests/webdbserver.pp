class profiles::webdbserver ($mysqlpwd=hiera('webdbserver::mysqlpwd')) {

include ::apache

class { '::mysql::server':
  root_password => "$mysqlpwd",
}

}
