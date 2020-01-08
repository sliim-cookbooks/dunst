dunst CHANGELOG
===============

This file is used to list changes made in each version of the dunst cookbook.

0.3.0
-----
- Add `dunst::dunstify` recipe to install dunstify
- CI fixes

0.2.1
-----
- Set default attributes for Dunst 1.3.0

0.2.0
-----
- Breaking changes: Dunst configuration attributes now located at `node[dunst][config]`
- Split `dunst::default` recipe into multiple recipes:
  - `dunst::default` - Empty recipe
  - `dunst::package` - Package installation
  - `dunst::compile` - Build the project from sources
  - `dunst::config` - Configure user's dunstrc file
- Improve `dunstrc.erb` template
- Improve CI

0.1.0
-----
- Initial release of dunst cookbook
