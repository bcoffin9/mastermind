# Mastermind

Writing a game called Mastermind. This is an assignment from The Odin Project. The game Mastermind has a simple preface: try to guess the secret password!
FIRST EDITION: The computer will randomly select a secret message consisting of of four colors (there will be six possible colors to choose from; example: Red Orange Green Yellow). The player will try to guess the message by inputting the following: red orange yellow blue. If they were to guess this, they would receive the following feedback: 2 Bulls, 1 Cow. 2 Bulls indicate that have correctly guessed a color in the correct spot and a cow means they have guessed a color but not in the right spot. The player has twelve chances to correctly guess the message.
The board will log the guesses for the player, as well as print out an input line and a message line. The input and message line will show values if: the player has correctly guessed the message OR the player runs out of guesses.


## Installation - If you'd like to play

Add this line to your application's Gemfile:

```ruby
gem 'mastermind'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mastermind

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bcoffin9/mastermind.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
