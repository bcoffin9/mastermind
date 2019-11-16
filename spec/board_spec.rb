require "spec_helper"

module Mastermind
    default_message = ["blue", "blue", "blue", "blue"]
    
    RSpec.describe Board do
        context "#intialize" do
            it "intializes without throwing an error" do
                expect { Board.new }.to_not raise_error
            end

            it "defaults the message to blue" do
                expect(Board.new.message).to eq default_message
            end
        end

        context "#game_over" do
            it "returns Decrypter won if the message is deciphered" do
                board = Board.new
                message = "Robin broke the code!"
                allow(board).to receive(decrypter.name) {"Robin"}
                expect { board.game_over(:winner) }.to eq message
            end
        end
    end
end
