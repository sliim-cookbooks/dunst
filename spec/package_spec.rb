# -*- coding: utf-8 -*-

require_relative 'spec_helper'

describe 'dunst::package' do
  subject { ChefSpec::SoloRunner.new(platform: 'debian', version: '9.0').converge(described_recipe) }

  it 'does install dunst package' do
    expect(subject).to install_package('dunst')
  end
end
