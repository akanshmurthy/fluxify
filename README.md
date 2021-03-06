# Fluxify

This gem is for React.js/Flux and Rails users. Instead of rewriting code for a util, action, constant, dispatcher, store, and component files, use this gem, which will generate all the files and folders within your app/assets/javascripts hierarchy. This assumes that you already have React and Flux installed in your Rails app as well as the proper includes in your application.js (react, flux, eventemitter, components, etc.) .
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fluxify', '~> 0.2.1'
```

And then bundle:

    $ bundle install


## Usage

Simply, enter:

    $ rails generate fluxify:install

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests (TESTS ARE COMING SOON). You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/akanshmurthy/fluxify. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

