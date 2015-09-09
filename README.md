# Capistrano::Supervisor

supervisord support for Capistrano 3.x

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

The task will run after `deploy:published` as part of Capistrano's default deploy,
or can be run in isolation with `cap production supervisord:reload`

### Configurable options:

```ruby
set :supervisord_reload_roles, :app
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
