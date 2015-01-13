dunst Cookbook | [![Cookbook Version](https://img.shields.io/cookbook/v/dunst.svg)](https://community.opscode.com/cookbooks/dunst) [![Build Status](https://travis-ci.org/sliim-cookbooks/dunst.svg?branch=master)](https://travis-ci.org/sliim-cookbooks/dunst)
==============
This cookbook installs and configures [dunst](http://knopwob.org/dunst/index.html).

Requirements
------------
#### platforms
The following platforms and versions are tested and supported using Opscode's test-kitchen.
- `Debian 7.6`

Attributes
----------
#### dunst::default
TODO:
<table>
<tr>
<th>Key</th>
<th>Type</th>
<th>Description</th>
<th>Default</th>
</tr>
<tr>
<td><tt>['dunst']['']</tt></td>
<td></td>
<td></td>
<td><tt></tt></td>
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
