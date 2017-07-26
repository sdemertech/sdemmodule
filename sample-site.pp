node default { 
  # Stefanos
  notify {"No match for Puppet Agent Hostname. Falling back to default configuration.": }
}

node 'linuxagent.example.com' {
  include lampserver

  # Stefanos: calling my classes
  include sdemmodule
  include sdemmodule::file

  # Stefanos: Another way to call a class and also pass a parameter.
  class {'sdemmodule::variables':
	variable1 => 'My Variable1',
	variable2 => 'My Variable2'
  }

}

node 'windowsagent.example.com' {
  include iisserver
}
