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
    roll_count = 0

    10.times do
      if @previous_rolls[roll_count] == 10
        sum_of_rolls += 10 + @previous_rolls[roll_count + 1] + @previous_rolls[roll_count + 2]
        roll_count += 1
      elsif @previous_rolls[roll_count] + @previous_rolls[roll_count + 1] == 10
        sum_of_rolls += 10 + @previous_rolls[roll_count + 2]
        roll_count += 2
      else
        sum_of_rolls += @previous_rolls[roll_count] + @previous_rolls[roll_count + 1]
        roll_count += 2
      end

    end
      return sum_of_rolls
  end
  #called at the end of a game. return total score for that
  #game must iterate thru all the frames & calculate the score




    # @previous_rolls.each do |rolls| #{|rolls| sum_of_rolls += rolls}
    #   #binding.pry
    #   if @previous_rolls[rolls] + @previous_rolls[rolls + 1] == 10#spare
    #     sum_of_rolls += 10 + @sum_of_rolls[rolls + 2]
    #     #@previous_rolls[rolls + 2]
    #   else
    #     sum_of_rolls += @previous_rolls[rolls] + @previous_rolls[rolls + 1]
    #   end
    #   @previous_rolls += 2
    # end
    # return sum_of_rolls


end
