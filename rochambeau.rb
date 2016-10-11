
class Game
attr_accessor :player_one_choice, :computer
  def initialize
    self.player_one_choice = "y"
  end
def play
  puts "Ready to play Rock Paper Scissors"
  puts "Press any key to start"
  gets
  choice
end
def choice
    while player_one_choice == "y"
      self.computer = %w(rock paper scissors).sample
      player_one_choice = "y"
      puts "whats your choice: rock, paper or scissors"
      player_one_choice = gets.chomp.downcase
        if player_one_choice == "rock" && computer == "scissors"
          puts "Your choice was #{player_one_choice} and computer's choice was #{computer}, you won bro!!"
        elsif player_one_choice == "paper" && computer == "rock"
          puts "Your choice was #{player_one_choice} and computer's choice was #{computer}, you won bro!!"
        elsif player_one_choice == "scissors" && computer == "paper"
          puts "Your choice was #{player_one_choice} and computer's choice was #{computer}, you won bro!!"
        elsif player_one_choice == computer
          puts "Your choice was #{player_one_choice} and computer's choice was #{computer}, you tied bro!!"
        else
          puts "Your choice was #{player_one_choice} and computer's choice was #{computer}, you lost bro!!"
        end
        puts "Would you like to play again (y)?"
        play_again = gets.chomp.downcase
          if play_again == "y"
            play
          else
            exit
          end
        end
      end
    end
game = Game.new
game.play

# game = Game.new
# game.play
#
# # %w(rock paper scissors) == ["rock", "paper", "scissors"]
# # selection = %w(rock paper scissors).sample
# #
# # while new_game == "y"
# #   computer = rand(1..1000)
#   player_guess = 0
#   until player_guess == computer
#     puts "What's your guess?"
#     player_guess = gets.chomp.to_i
#     if computer > player_guess
#       puts "You're too low."
#     elsif computer < player_guess
#       puts "You're Willie Nelson."
#     else
#       puts "You got it!\n\nMy number was #{computer}."
#     end
#   end
#   puts "Would you like to play again? (Press y for yes)"
#   new_game = gets.chomp.downcase
≈
