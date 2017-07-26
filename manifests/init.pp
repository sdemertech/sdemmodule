# == Class: sdemmodule
#
# Full description of class sdemmodule here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'sdemmodule':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class sdemmodule  (
  # not required
  $variable3 = '',
  $test = ''
)
{

  notify {"********** This variable is passed from Hiera:  \"$test\".": }

  # Add anothe file and restart Apache by notify when teh file is modified
  # Not working
  file { '/var/www/html/stef.txt':
    ensure => file,
    content => 'Hello, Master Puppeteer !!!',
    notify => Service['apache2'],
  }

  # added a conditional logic based on facter variable ipaddress
  # can be used for actions based on OS etc.
  if $::ipaddress == '10.0.0.11' {
    notify {"********** IP received from agent via facter matches the manifect file": }
  }


}
