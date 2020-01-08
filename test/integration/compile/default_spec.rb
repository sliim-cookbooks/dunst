# -*- coding: utf-8 -*-

describe command 'dunst --version' do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match(/Dunst - A customizable and lightweight notification-daemon/) }
  its(:stderr) { should eq '' }
end

describe command 'dunstify -s' do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match(/name:dunst/) }
  its(:stderr) { should eq '' }
end
