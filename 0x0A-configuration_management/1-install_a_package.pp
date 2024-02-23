# Puppet manifest to install Flask from pip3

# Ensure Python3-pip package is installed
package { 'python3-pip':
  ensure => installed,
}

# Install Flask using pip3 with the specified version
exec { 'install_flask':
  command     => '/usr/bin/pip3 install flask==2.1.0',
  path        => ['/usr/bin', '/bin'],
  environment => [],
  creates     => '/usr/local/lib/python3.8/dist-packages/flask',
}

