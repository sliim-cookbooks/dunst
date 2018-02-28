name 'dunst'
maintainer 'Sliim'
maintainer_email 'sliim@mailoo.org'
license 'Apache-2.0'
description 'Installs/Configures dunst'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
chef_version '>= 12.5' if respond_to?(:chef_version)
version '0.2.1'

recipe 'dunst::default', 'Do nothing'
recipe 'dunst::package', 'Installs Dunst from package'
recipe 'dunst::compile', 'Installs Dunst from sources'
recipe 'dunst::config', 'Configures Dunst for a specific user'

supports 'debian'

source_url 'https://github.com/sliim-cookbooks/dunst' if
  respond_to?(:source_url)
issues_url 'https://github.com/sliim-cookbooks/dunst/issues' if
    respond_to?(:issues_url)
