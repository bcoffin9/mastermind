require_relative "color.rb"

module Mastermind
    class Guess
        attr_accessor :bulls, :cows, :matched
        attr_reader :choices
        def initialize(choices, bulls = 0, cows = 0)
            @choices = choices.split(" ")
            @matched = [false, false, false, false]
            @bulls = bulls
            @cows = cows
        end

        def print_color(choice)
            case choice
            when "r"
                "  ".bg_red
            when "gn"
                "  ".bg_green
            when "c"
                "  ".bg_cyan
            when "b"
                "  ".bg_blue
            when "gy"
                "  ".bg_gray
            when "m"
                "  ".bg_magenta
            else
                choice
            end
        end

        def print_choices
            a = []
            choices.each do |choice|
                a.push(print_color(choice))
            end
            return "  " + a.join(" | ")
        end 
    end
end