# -*- coding: utf-8 -*-

require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  config.log_level = :error
end

ChefSpec::Coverage.start! { add_filter 'dunst' }

require 'chef/application'
