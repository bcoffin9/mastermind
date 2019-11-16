module Mastermind
    class Board
        attr_accessor :history, :message_match
        attr_reader :input_prompt, :message
        ENCRYPTED_MESSAGE = "XX | XX | XX | XX"
        USER_INPUT = "__ | __ | __ | __"
        COLORS = ["r", "gn", "b", "gy", "m", "c"]

        def initialize(message = "random")
            @message = message == "random" ? self.random_message : message
            @history = History.new
            @message_match =[false, false, false, false]
        end

        def random_message
            a = []
            4.times do
                a.push(COLORS.shuffle[0])
            end
            return a
        end


        def feedback(guess)
            self.message_match = [false, false, false, false]
            bulls = 0
            cows = 0
            guess.choices.each_with_index do |val, idx| #bulls
                if guess.choices[idx] == message[idx]
                    guess.matched[idx] = true
                    self.message_match[idx] = true
                    bulls += 1
                end
            end
            guess.choices.each_with_index do |value, index|  #cows
                next if guess.matched[index]
                self.message.each_with_index do |val, idx|
                    next if self.message_match[idx]
                    next if guess.matched[index]
                    if  value == val
                        guess.matched[index] = true
                        self.message_match[idx] = true
                        cows += 1
                    end
                end
            end
            return bulls, cows
        end

        def formatted_board
            puts "-------------HISTORY-------------"
            self.history.formatted_history
            puts "------------USER GUESS-----------"
            puts USER_INPUT
            puts "-------------MESSAGE-------------"
            puts ENCRYPTED_MESSAGE
        end

        def game_over(guess)
            return :winner if guess.choices == message
            return :loser if history.guesses.size >= 11
            return false
        end

    end
end