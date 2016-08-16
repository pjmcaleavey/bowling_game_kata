require 'pry'

class Game
  def initialize
    @previous_rolls = []
  end

  def roll(pins)
    @previous_rolls << pins
    #called each time a player rolls a ball
    #argument is the number of pins knocked down
  end

  def score
    sum_of_rolls = 0
    @previous_rolls.each do |rolls| #{ |rolls| sum_of_rolls += rolls }
       sum_of_rolls += rolls
       # if rolls + 1 == 10
       #  sum_of_rolls == 
    end
    return sum_of_rolls
    #called at the end of a game. return total score for that
    #game must iterate thru all the frames & calculate the score
  end
end