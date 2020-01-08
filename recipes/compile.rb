# -*- coding: utf-8 -*-
#
# Cookbook:: dunst
# Recipe:: compile
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

package node['dunst']['compile']['dependencies']

execute 'dunst-make' do
  cwd node['dunst']['compile']['build_dir']
  command 'make'
  action :nothing
end

execute 'dunst-make-install' do
  cwd node['dunst']['compile']['build_dir']
  command 'make install'
  action :nothing
end

directory node['dunst']['compile']['build_dir'] do
  recursive true
  mode '0755'
end

git node['dunst']['compile']['build_dir'] do
  repository node['dunst']['compile']['repository']
  reference node['dunst']['compile']['version']
  notifies :run, 'execute[dunst-make]', :immediately
  notifies :run, 'execute[dunst-make-install]', :immediately
  action :sync
end
