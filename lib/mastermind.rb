require_relative "./mastermind/version.rb"

module Mastermind
  class Error < StandardError; end
  # Your code goes here...
end

require_relative "./mastermind/board.rb"
require_relative "./mastermind/game.rb"
require_relative "./mastermind/guess.rb"
require_relative "./mastermind/history.rb"
require_relative "./mastermind/color.rb"