name 'dunst'
maintainer 'Sliim'
maintainer_email 'sliim@mailoo.org'
license 'Apache 2.0'
description 'Installs/Configures dunst'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'

recipe 'dunst::default', 'Installs and configures dunst'

supports 'debian'
