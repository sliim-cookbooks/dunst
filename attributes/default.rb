# -*- coding: utf-8 -*-
#
# Cookbook Name:: dunst
# Attributes:: default
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['dunst']['user'] = nil
default['dunst']['group'] = node['dunst']['user']
default['dunst']['home'] = "/home/#{node['dunst']['user']}"

# Global configuration
default['dunst']['global']['font'] = 'Monospace 8'
default['dunst']['global']['allow_markup'] = 'yes'
default['dunst']['global']['format'] = '<b>%s</b>\n%b'
default['dunst']['global']['sort'] = 'yes'
default['dunst']['global']['indicate_hidden'] = 'yes'
default['dunst']['global']['alignment'] = 'left'
default['dunst']['global']['bounce_freq'] = 0
default['dunst']['global']['show_age_threshold'] = 60
default['dunst']['global']['word_wrap'] = 'yes'
default['dunst']['global']['ignore_newline'] = 'no'
default['dunst']['global']['geometry'] = '300x5-10+20'
default['dunst']['global']['shrink'] = 'no'
default['dunst']['global']['transparency'] = 0
default['dunst']['global']['idle_threshold'] = 120
default['dunst']['global']['monitor'] = 0
default['dunst']['global']['follow'] = 'mouse'
default['dunst']['global']['sticky_history'] = 'yes'
default['dunst']['global']['history_length'] = 20
default['dunst']['global']['show_indicators'] = 'yes'
default['dunst']['global']['line_height'] = 0
default['dunst']['global']['separator_height'] = 2
default['dunst']['global']['padding'] = 8
default['dunst']['global']['horizontal_padding'] = 8
default['dunst']['global']['separator_color'] = 'frame'
default['dunst']['global']['startup_notification'] = 'false'
default['dunst']['global']['dmenu'] = '/usr/bin/dmenu -p dunst:'
default['dunst']['global']['browser'] = '/usr/bin/firefox -new-tab'
default['dunst']['global']['icon_position'] = 'off'
# rubocop:disable Metrics/LineLength
default['dunst']['global']['icon_folders'] = '/usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/'

# Frame configuration
default['dunst']['frame']['width'] = 2
default['dunst']['frame']['color'] = '#AAAAAA'

# Shortcuts configuration
default['dunst']['shortcuts']['close'] = 'ctrl+space'
default['dunst']['shortcuts']['close_all'] = 'ctrl+shift+space'
default['dunst']['shortcuts']['history'] = 'ctrl+grave'
default['dunst']['shortcuts']['context'] = 'ctrl+shift+period'

# Urgency configuration
default['dunst']['urgency_low']['background'] = '#222222'
default['dunst']['urgency_low']['foreground'] = '#888888'
default['dunst']['urgency_low']['timeout'] = 10
default['dunst']['urgency_normal']['background'] = '#285577'
default['dunst']['urgency_normal']['foreground'] = '#FFFFFF'
default['dunst']['urgency_normal']['timeout'] = 10
default['dunst']['urgency_critical']['background'] = '#900000'
default['dunst']['urgency_critical']['foreground'] = '#FFFFFF'
default['dunst']['urgency_critical']['timeout'] = 0
