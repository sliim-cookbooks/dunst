# -*- coding: utf-8 -*-

require 'serverspec'
set :backend, :exec

describe package('dunst') do
  it { should be_installed }
end

describe file('/home/vagrant/.config/dunst/dunstrc') do
  it { should be_file }
  it { should be_owned_by 'vagrant' }
  it { should be_grouped_into 'vagrant' }
  its(:content) { should match(/^\s+font = Monospace 8$/) }
  its(:content) { should match(/^\s+allow_markup = yes$/) }
  its(:content) { should match(/^\s+format = "<b>%s<\/b>\\n%b"$/) }
  its(:content) { should match(/^\s+sort = yes$/) }
  its(:content) { should match(/^\s+indicate_hidden = yes$/) }
  its(:content) { should match(/^\s+alignment = left$/) }
  its(:content) { should match(/^\s+bounce_freq = 0$/) }
  its(:content) { should match(/^\s+show_age_threshold = 60$/) }
  its(:content) { should match(/^\s+word_wrap = yes$/) }
  its(:content) { should match(/^\s+ignore_newline = no$/) }
  its(:content) { should match(/^\s+geometry = "300x5-10\+20"$/) }
  its(:content) { should match(/^\s+shrink = no$/) }
  its(:content) { should match(/^\s+transparency = 0$/) }
  its(:content) { should match(/^\s+idle_threshold = 120$/) }
  its(:content) { should match(/^\s+monitor = 0$/) }
  its(:content) { should match(/^\s+follow = mouse$/) }
  its(:content) { should match(/^\s+sticky_history = yes$/) }
  its(:content) { should match(/^\s+history_length = 20$/) }
  its(:content) { should match(/^\s+show_indicators = yes$/) }
  its(:content) { should match(/^\s+line_height = 0$/) }
  its(:content) { should match(/^\s+separator_height = 2$/) }
  its(:content) { should match(/^\s+padding = 8$/) }
  its(:content) { should match(/^\s+horizontal_padding = 8$/) }
  its(:content) { should match(/^\s+separator_color = frame$/) }
  its(:content) { should match(/^\s+startup_notification = false$/) }
  its(:content) { should match(%r{^\s+dmenu = /usr/bin/dmenu -p dunst:$}) }
  its(:content) { should match(%r{^\s+browser = /usr/bin/firefox -new-tab$}) }
  its(:content) { should match(/^\s+icon_position = off$/) }
  # rubocop:disable Metrics/LineLength
  its(:content) { should match(%r{^\s+icon_folders = /usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/$}) }
  its(:content) { should match(/^\s+width = 2$/) }
  its(:content) { should match(/^\s+color = "\#AAAAAA"$/) }
  its(:content) { should match(/^\s+close = ctrl\+space$/) }
  its(:content) { should match(/^\s+close_all = ctrl\+shift\+space$/) }
  its(:content) { should match(/^\s+history = ctrl\+grave$/) }
  its(:content) { should match(/^\s+context = ctrl\+shift\+period$/) }
  its(:content) { should match(/^\s+background = "\#222222"$/) }
  its(:content) { should match(/^\s+foreground = "\#888888"$/) }
  its(:content) { should match(/^\s+timeout = 10$/) }
  its(:content) { should match(/^\s+background = "\#285577"$/) }
  its(:content) { should match(/^\s+foreground = "\#FFFFFF"$/) }
  its(:content) { should match(/^\s+timeout = 10$/) }
  its(:content) { should match(/^\s+background = "\#900000"$/) }
  its(:content) { should match(/^\s+foreground = "\#FFFFFF"$/) }
  its(:content) { should match(/^\s+timeout = 0$/) }
end
