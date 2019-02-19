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

default['dunst']['package'] = 'dunst'

default['dunst']['user'] = nil
default['dunst']['group'] = node['dunst']['user']
default['dunst']['home'] = "/home/#{node['dunst']['user']}"

default['dunst']['compile']['dependencies'] = %w(dbus libxinerama-dev libxrandr2 libxss-dev libxdg-basedir-dev libglib2.0-0 libpango-1.0-0 libcairo2-dev libgtk-3-dev libxrandr2 libxft-dev gir1.2-dbusmenu-glib-0.4 libdbusmenu-glib-dev)
default['dunst']['compile']['build_dir'] = '/opt/dunst'
default['dunst']['compile']['repository'] = 'https://github.com/dunst-project/dunst.git'
default['dunst']['compile']['version'] = 'v1.3.1'

default['dunst']['dunstify']['dependencies'] = %w(libnotify-dev)

default['dunst']['rules'] = {}
default['dunst']['config'] = {
  global: {
    font: 'Monospace 8',
    markup: 'no',
    format: '"<b>%s</b>\n%b"',
    sort: 'yes',
    indicate_hidden: 'yes',
    alignment: 'left',
    bounce_freq: 0,
    show_age_threshold: 60,
    word_wrap: 'yes',
    ignore_newline: 'no',
    geometry: '"300x5-10+20"',
    shrink: 'no',
    transparency: 0,
    idle_threshold: 120,
    monitor: 0,
    follow: 'mouse',
    sticky_history: 'yes',
    history_length: 20,
    show_indicators: 'yes',
    line_height: 0,
    separator_height: 2,
    padding: 8,
    horizontal_padding: 8,
    separator_color: 'frame',
    startup_notification: 'false',
    dmenu: '/usr/bin/dmenu -p dunst:',
    browser: '/usr/bin/firefox -new-tab',
    icon_position: 'off',
    icon_path: '/usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/',
    frame_width: 2,
    frame_color: '"#AAAAAA"',
  },
  shortcuts: {
    close: 'ctrl+space',
    close_all: 'ctrl+shift+space',
    history: 'ctrl+grave',
    context: 'ctrl+shift+period',
  },
  urgency_low: {
    background: '"#222222"',
    foreground: '"#888888"',
    timeout: 10,
  },
  urgency_normal: {
    background: '"#285577"',
    foreground: '"#FFFFFF"',
    timeout: 10,
  },
  urgency_critical: {
    background: '"#900000"',
    foreground: '"#FFFFFF"',
    timeout: 0,
  },
}
