# Capistrano::Supervisor

[![Gem Version](https://badge.fury.io/rb/capistrano-supervisor.svg)](https://badge.fury.io/rb/capistrano-supervisor)

supervisord support for Capistrano 3.x

Makes it possible to reload/restart supervisord during deploy

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'capistrano', '~> 3.1.0'
gem 'capistrano-supervisor'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capistrano-supervisor

## Usage

Require in Capfile to use the default task:

```ruby
require 'capistrano/supervisor'
```

Configure in deploy.rb to execute one of the tasks:

```ruby
after 'deploy:published', 'supervisord:reload'
after 'deploy:published', 'supervisord:restart'
```

You can also run it in isolation: `cap production supervisord:reload` or `cap production supervisord:restart`

Configurable options:

```ruby
set :supervisord_reload_roles,  :app
set :supervisord_restart_roles, :app
```

## Development

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `capistrano-supervisor.gemspec`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

[www.glooby.com](https://www.glooby.com)
[www.glooby.se](https://www.glooby.se)
