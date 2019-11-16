module Mastermind
    class Game
        #first game will be randomly generated message
        attr_accessor :introduced
        attr_reader :board, :decrypter
        def initialize(encrypter = "Dwayne", decrypter)
            @board = Board.new
            @encrypter = encrypter
            @decrypter = decrypter
            @introduced = false
        end

        def play
            while true
                #puts board.message
                system "clear" unless !introduced
                introduction
                board.formatted_board
                guess = solicit_move
                result = board.game_over(guess)
                guess.bulls, guess.cows = board.feedback(guess)
                board.history.add_guess(guess)
                if result
                    game_over_message(result)
                    break
                end
            end
        end

        def solicit_move
            puts ""
            puts "What's your guess?"
            input = gets.chomp
            new_guess = Guess.new(input)
            return new_guess
        end

        def introduction
            self.introduced = true
            puts "Mastermind objective: guess the secret message with no more than 12 guesses."
            puts "On each guess you'll receive feedback: a Bull means that you guessed a color in the correct spot,"
            puts "while a Cow means that you guessed a correct color but it is in the wrong spot."
            puts "The secret message contains four parts, with each part being one of six colors:"
            puts "Red (r), Green (gn), Gray (gy), Blue (b), Cyan (c), and Magenta (m)"
            puts "When guessing, use the format:"
            puts "Ex 1: r b gn m"
            puts "Ex 2: gy b r c"
            puts "Let's play!"
            puts
        end

        def game_over_message(result)
            formatted_message = Guess.new(board.message.join(" "))
            puts "#{self.decrypter} failed to break the code :(" if result == :loser
            puts "#{self.decrypter} broke the code!" if result == :winner
            puts "The message was: " + formatted_message.print_choices
        end
    end
end
