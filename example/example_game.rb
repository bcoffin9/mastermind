require_relative "../lib/mastermind.rb"

puts "Welcome to Mastermind, what's your name?"
decrypter = gets.chomp
Mastermind::Game.new(decrypter).play