# Testing

Tests can be run with Rake:

#### Install dependencies
`bundle install`

#### Run Checkstyle & Specs
`bundle exec rake`

#### Foodcritic
`bundle exec rake test:foodcritic`

#### Cookstyle
`bundle exec rake test:cookstyle`

#### ChefSpec
`bundle exec rake test:chefspec`

#### Kitchen
`bundle exec rake test:kitchen`

Docker driver is used for integration testing with test-kitchen. You will need to have docker installed to run integration testing, or adapt the existing .kitchen.yml for your driver.

