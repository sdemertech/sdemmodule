class sdemmodule::file (

  ## Variable local to this class.
  $filedir = "/tmp/stefanos2"

){

  notify {"********** Executing class file from the sdemmodule.": }

  file { 'test':
    path  => "$filedir/test_file",
    ensure => file,
    content => 'Hello',
    ### make sure the dir is created first
    require => File['stefanos_dir'],
  }

  file { 'stefanos_dir':
    path  => "$filedir",
    ensure => directory,
  }

  ## deploy a file
  file { 'another-test':
    path  => "$filedir/another_test_file",
    ensure => file,
    source => 'puppet:///modules/sdemmodule/test-file',
    require => File['stefanos_dir'],
  }

  ## deploy a template
  file { 'another-teplate':
    content => template('sdemmodule/test-template.erb'),
    path  => "$filedir/template_file",
    require => File['stefanos_dir'],
  }


  ## call another class
  include sdemmodule::file-include
}
