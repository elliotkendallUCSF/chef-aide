name 'aide'
description 'Installs and configures AIDE HIDS'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
maintainer 'Michael Burns'
maintainer_email 'michael@mirwin.net'
license 'BSD'
version '0.1.2'

supports 'centos'
supports 'ubuntu'

recipe 'aide', 'Installs and configures AIDE HIDS'
