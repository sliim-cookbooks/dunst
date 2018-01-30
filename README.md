dunst Cookbook | [![Cookbook Version](https://img.shields.io/cookbook/v/dunst.svg)](https://community.opscode.com/cookbooks/dunst) [![Build Status](https://travis-ci.org/sliim-cookbooks/dunst.svg?branch=master)](https://travis-ci.org/sliim-cookbooks/dunst)
==============
This cookbook installs and configures [dunst](https://dunst-project.org).

Requirements
------------
#### platforms
The following platforms and versions are tested and supported using Opscode's test-kitchen.
- `Debian 9`

Attributes
----------
Default values are the default setup of dunst `1.1.0`.

Look at `/usr/share/doc/dunst/dunst.example.qz` for more details about dunst configuration. Configuration example is also available in the [repository](https://github.com/dunst-project/dunst/blob/master/dunstrc).
Some configuration variables may change with dunst version `1.2.0` and `1.3.0`. Read the [ChangeLog](https://github.com/dunst-project/dunst/blob/master/CHANGELOG.md) for more details.

#### dunst::package
|  Key               |  Type  |  Description                               |
| ------------------ | ------ | ------------------------------------------ |
| `[dunst][package]` | String | Package name to install (default: `dunst`) |

#### dunst::compile
|  Key                             |  Type  |  Description                                                               |
| -------------------------------- | ------ | -------------------------------------------------------------------------- |
| `[dunst][compile][dependencies]` | Array  | Build dependencies list (default: See [attributes](attributes/default.rb)) |
| `[dunst][compile][build_dir]`    | String | Build directory (default: `/opt/dunst`)                                    |
| `[dunst][compile][repository]`   | String | Git repository (default: `https://github.com/dunst-project/dunst.git`)     |
| `[dunst][compile][version]`      | String | Git branch or tag name (default: `v1.3.1`)                                 |

#### dunst::config
|  Key              |  Type  |  Description                               |
| ----------------- | ------ | ------------------------------------------ |
| `[dunst][user]`   | String | When non-nil, deploy dunstrc template for `user` (default: `nil`) |
| `[dunst][group]`  | String | User's group for file permission (default: `node[dunst][user]`) |
| `[dunst][home]`   | String | User's home directory (default: `/home/node[dunst][user]`) |
| `[dunst][config]` | Hash   | Configuration hash to provision dunstrc file (default: See [attributes](attributes/default.rb)) |
| `[dunst][rules]`  | Hash   | Rules list to add to dunstrc file (default: `{}`) |

Usage
-----
#### dunst::default
This recipe do nothing.

#### dunst::package
This recipe install Dunst from package.

```json
{
"name":"my_node",
  "run_list": [
    "recipe[dunst::package]"
  ]
}
```

#### dunst::compile
This recipe clone Dunst repository, install build dependencies and build Dunst project.

```json
{
"name":"my_node",
  "run_list": [
    "recipe[dunst::compile]"
  ],
  "attributes": {
    "dunst": {
      "compile": {
        "build_dir": "/tmp/dunst-build"
      }
    }
  }
}
```

#### dunst::config
This recipe deploy the dunstrc configuration file for a user. `node[dunst][user]` is required (default is `nil`) for this recipe.

```json
{
"name":"my_node",
  "run_list": [
    "recipe[dunst::config]"
  ],
  "attributes": {
    "dunst": {
      "config": {
        "global": {
          ...
        },
        ...
        "rules": {
          "espeak":{
            "summary": "*",
            "script": "dunst_espeak.sh"
          }
        }
      }
    }
  }
}
```

Testing
-------
See [TESTING.md](TESTING.md)

Contributing
------------
See [CONTRIBUTING.md](CONTRIBUTING.md)

License and Authors
-------------------
Authors: Sliim <sliim@mailoo.org> 

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
