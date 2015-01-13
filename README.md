dunst Cookbook | [![Cookbook Version](https://img.shields.io/cookbook/v/dunst.svg)](https://community.opscode.com/cookbooks/dunst) [![Build Status](https://travis-ci.org/sliim-cookbooks/dunst.svg?branch=master)](https://travis-ci.org/sliim-cookbooks/dunst)
==============
This cookbook installs and configures [dunst](http://knopwob.org/dunst/index.html).
It install the dunst package and setup user configuration if user attribute is specified (non-nil).


Requirements
------------
#### platforms
The following platforms and versions are tested and supported using Opscode's test-kitchen.
- `Debian 7.6`

Attributes
----------
Default values of attributes are the default setup of dunst 1.1.0.

Look at `/usr/share/doc/dunst/dunst.example.qz` for more details about dunst configuration.

#### dunst::default
<table>
<tr>
<th>Key</th>
<th>Type</th>
<th>Description</th>
<th>Default</th>
</tr>
<tr>
<td><tt>['dunst']['user']</tt></td>
<td>String</td>
<td>When non-nil, deploy dunst config from template for `user`</td>
<td><tt>nil</tt></td>
</tr>
<tr>
<td><tt>['dunst']['group']</tt></td>
<td>String</td>
<td>Group for file permission</td>
<td><tt>`node['dunst']['user']`</tt></td>
</tr>
<tr>
<td><tt>['dunst']['home']</tt></td>
<td>String</td>
<td>User home to deploy dunstrc configuration file</td>
<td><tt>/home/`node['dunst']['user']`</tt></td>
</tr>
</table>

##### Global configuration
<table>
<tr>
<th>Key</th>
<th>Type</th>
<th>Default</th>
</tr>
<tr>
<td><tt>['dunst']['global']['font']</td>
<td>String</td>
<td><tt>Monospace 8</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['allow_markup']</td>
<td>String</td>
<td><tt>yes</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['format']</td>
<td>String</td>
<td><tt><b>%s</b>\n%b</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['sort']</td>
<td>String</td>
<td><tt>yes</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['indicate_hidden']</td>
<td>String</td>
<td><tt>yes</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['alignment']</td>
<td>String</td>
<td><tt>left</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['bounce_freq']</td>
<td>Integer</td>
<td><tt>0</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['show_age_threshold']</td>
<td>Integer</td>
<td><tt>60</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['word_wrap']</td>
<td>String</td>
<td><tt>yes</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['ignore_newline']</td>
<td>String</td>
<td><tt>no</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['geometry']</td>
<td>String</td>
<td><tt>300x5-10+20</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['shrink']</td>
<td>String</td>
<td><tt>no</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['transparency']</td>
<td>Integer</td>
<td><tt>0</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['idle_threshold']</td>
<td>Integer</td>
<td><tt>120</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['monitor']</td>
<td>Integer</td>
<td><tt>0</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['follow']</td>
<td>String</td>
<td><tt>mouse</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['sticky_history']</td>
<td>String</td>
<td><tt>yes</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['history_length']</td>
<td>Integer</td>
<td><tt>20</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['show_indicators']</td>
<td>String</td>
<td><tt>yes</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['line_height']</td>
<td>Integer</td>
<td><tt>0</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['separator_height']</td>
<td>Integer</td>
<td><tt>2</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['padding']</td>
<td>Integer</td>
<td><tt>8</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['horizontal_padding']</td>
<td>Integer</td>
<td><tt>8</tt></td>
</tr>,
<tr>
<td><tt>['dunst']['global']['separator_color']</td>
<td>String</td>
<td><tt>frame</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['startup_notification']</td>
<td>String</td>
<td><tt>false</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['dmenu']</td>
<td>String</td>
<td><tt>/usr/bin/dmenu -p dunst:</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['browser']</td>
<td>String</td>
<td><tt>/usr/bin/firefox -new-tab</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['icon_position']</td>
<td>String</td>
<td><tt>off</tt></td>
</tr>
<tr>
<td><tt>['dunst']['global']['icon_folders']</td>
<td>String</td>
<td><tt>/usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/</tt></td>
</tr>
</table>

##### Frame configuration
<table>
<tr>
<th>Key</th>
<th>Type</th>
<th>Default</th>
</tr>
<tr>
<td><tt>['dunst']['frame']['width']</td>
<td>Integer</td>
<td><tt>2</tt></td>
</tr>
<tr>
<td><tt>['dunst']['frame']['color']</td>
<td>String</td>
<td><tt>#AAAAAA</tt></td>
</tr>
</table>

##### Shortcuts configuration
<table>
<tr>
<th>Key</th>
<th>Type</th>
<th>Default</th>
</tr>
<tr>
<td><tt>['dunst']['shortcuts']['close']</td>
<td>String</td>
<td><tt>ctrl+space</tt></td>
</tr>
<tr>
<td><tt>['dunst']['shortcuts']['close_all']</td>
<td>String</td>
<td><tt>ctrl+shift+space</tt></td>
</tr>
<tr>
<td><tt>['dunst']['shortcuts']['history']</td>
<td>String</td>
<td><tt>ctrl+grave</tt></td>
</tr>
<tr>
<td><tt>['dunst']['shortcuts']['context']</td>
<td>String</td>
<td><tt>ctrl+shift+period</tt></td>
</tr>
</table>

##### Urgency configuration
<table>
<tr>
<th>Key</th>
<th>Type</th>
<th>Default</th>
</tr>
<tr>
<td><tt>['dunst']['urgency_low']['background']</td>
<td>String</td>
<td><tt>#222222</tt></td>
</tr>
<tr>
<td><tt>['dunst']['urgency_low']['foreground']</td>
<td>String</td>
<td><tt>#888888</tt></td>
</tr>
<tr>
<td><tt>['dunst']['urgency_low']['timeout']</td>
<td>Integer</td>
<td><tt>10</tt></td>
</tr>
<tr>
<td><tt>['dunst']['urgency_normal']['background']</td>
<td>String</td>
<td><tt>#285577</tt></td>
</tr>
<tr>
<td><tt>['dunst']['urgency_normal']['foreground']</td>
<td>String</td>
<td><tt>#FFFFFF</tt></td>
</tr>
<tr>
<td><tt>['dunst']['urgency_normal']['timeout']</td>
<td>Integer</td>
<td><tt>10</tt></td>
</tr>
<tr>
<td><tt>['dunst']['urgency_critical']['background']</td>
<td>String</td>
<td><tt>#900000</tt></td>
</tr>
<tr>
<td><tt>['dunst']['urgency_critical']['foreground']</td>
<td>String</td>
<td><tt>#FFFFFF</tt></td>
</tr>
<tr>
<td><tt>['dunst']['urgency_critical']['timeout']</td>
<td>Integer</td>
<td><tt>0</tt></td>
</tr>
</table>

Usage
-----
#### dunst::default
Just include `dunst` in your node's `run_list`:

```json
{
"name":"my_node",
  "run_list": [
    "recipe[dunst]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Sliim <sliim@mailoo.org> 

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
