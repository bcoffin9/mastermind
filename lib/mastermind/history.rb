module Mastermind
    class History
        attr_accessor :guesses

        def initialize
            @guesses = []
        end

        def add_guess(guess)
            guesses.push(guess)
        end

        def formatted_history
            guesses.each_with_index do |guess, idx|
                idx += 1
                puts ("----------Guess " + idx.to_s + "----------").center(30)
                puts guess.print_choices
                puts "  Bulls: " + guess.bulls.to_s
                puts "  Cows:  " + guess.cows.to_s
            end
        end
    end
end