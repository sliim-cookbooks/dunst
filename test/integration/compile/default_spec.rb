# -*- coding: utf-8 -*-

describe command 'dunst --version' do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match(/Dunst - A customizable and lightweight notification-daemon/) }
end

describe command 'dunstify' do
  it { should exist }
end
