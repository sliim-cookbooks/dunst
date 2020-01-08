# -*- coding: utf-8 -*-

require_relative 'spec_helper'

describe 'dunst::compile' do
  let(:subject) do
    ChefSpec::SoloRunner.new do |node|
      node.override['dunst']['compile']['build_dir'] = '/opt/dunst-build'
      node.override['dunst']['compile']['version'] = '4.2'
      node.override['dunst']['compile']['dependencies'] = %w(dbus)
    end.converge described_recipe
  end

  it 'installs package[dbus]' do
    expect(subject).to install_package('dbus')
  end

  it 'creates directory[/opt/dunst-build]' do
    expect(subject).to create_directory('/opt/dunst-build')
      .with(mode: '0755',
            recursive: true)
  end

  it 'syncs git[/opt/dunst-build]' do
    expect(subject).to sync_git('/opt/dunst-build')
      .with(repository: 'https://github.com/dunst-project/dunst.git',
            reference: '4.2')
  end
end
