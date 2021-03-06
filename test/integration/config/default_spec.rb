# -*- coding: utf-8 -*-

describe file '/home/kitchen/.config/dunst/dunstrc' do
  it { should be_file }
  it { should be_owned_by 'kitchen' }
  it { should be_grouped_into 'kitchen' }
  its(:content) { should match(/^\s+font = Monospace 8$/) }
  its(:content) { should match(/^\s+markup = no$/) }
  its(:content) { should match(%r{^\s+format = "<b>%s<\/b>\\n%b"$}) }
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
  its(:content) { should match(%r{^\s+icon_path = /usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/$}) }
  its(:content) { should match(/^\s+frame_width = 2$/) }
  its(:content) { should match(/^\s+frame_color = "\#AAAAAA"$/) }
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

  # rules
  its(:content) { should match(/^\[my-rule\]$/) }
  its(:content) { should match(/^\s+summary = foo$/) }
  its(:content) { should match(/^\s+urgency = low$/) }
  its(:content) { should match(/^\[my-rule2\]$/) }
  its(:content) { should match(/^\s+summary = bar$/) }
  its(:content) { should match(/^\s+urgency = critical$/) }
end
