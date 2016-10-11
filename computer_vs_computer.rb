class Game2
attr_accessor :player_one_choice, :computer, :rock, :paper, :scissors, :draw
  def initialize
    self.player_one_choice = %w(rock paper scissors).sample
    self.rock = 0
    self.paper= 0
    self.scissors = 0
    self.draw = 0
  end
# def score(rock=0)
#   rock = 0
#   paper = 0
#   scissors = 0
#   draws = 0
# end
def play
     player_one_choice = %w(rock paper scissors).sample
      self.computer = %w(rock paper scissors).sample
        if player_one_choice == "rock" && computer == "scissors"
          self.rock += 1
        elsif player_one_choice == "paper" && computer == "rock"
          self.paper += 1
        elsif player_one_choice == "scissors" && computer == "paper"
          self.scissors += 1
        elsif player_one_choice == "paper" && computer == "scissors"
          self.scissors += 1
        elsif player_one_choice == "rock" && computer == "paper"
          self.paper += 1
        elsif player_one_choice == "scissors" && computer == "rock"
          self.rock += 1
        else player_one_choice == computer
          self.draw += 1
        end

      end
    end

game = Game2.new
1000.times{game.play}
puts "Total times that a game was won with rock :  #{game.rock}"
puts "Total times that a game was won with paper :  #{game.paper}"
puts "Total times that a game was won with scissors :  #{game.scissors}"
puts "Total times that a game was a draw :  #{game.draw}"
