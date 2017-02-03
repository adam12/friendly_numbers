# FriendlyNumbers (aka Friendly)

Friendly number helpers without the mess. Working on a Roda or Sinatra application
and want to format a number into a currency or friendly file size? Got you covered.

Rails-like helpers for `number_to_currency` and `number_to_human_size`

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'friendly_numbers'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install friendly_numbers

## Usage

To format a value as a currency:

    FriendlyNumbers.number_to_currency 123.45  # => "$123.45"

To format a value as a human file size:

    FriendlyNumbers.number_to_human_size 12345.67  # => "12.056 KB"

Also conveniently aliased under the `Friendly` namespace.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push git
commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/adam12/friendly_numbers.

I love pull requests! If you fork this project and modify it, please ping me to see
if your changes can be incorporated back into this project.

That said, if your feature idea is nontrivial, you should probably open an issue to
[discuss it](http://www.igvita.com/2011/12/19/dont-push-your-pull-requests/)
before attempting a pull request.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

