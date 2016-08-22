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
    @roll_count = 0

    10.times do
      if strike
        sum_of_rolls += 10 + @previous_rolls[@roll_count + 1] +
                        @previous_rolls[@roll_count + 2]
        @roll_count += 1
      elsif spare
        sum_of_rolls += 10 + @previous_rolls[@roll_count + 2]
        @roll_count += 2
      else
        sum_of_rolls += @previous_rolls[@roll_count] +
                        @previous_rolls[@roll_count + 1]
        @roll_count += 2
      end
    end
      return sum_of_rolls
  end
  #called at the end of a game. return total score for that
  #game must iterate thru all the frames & calculate the score

  def spare
    @previous_rolls[@roll_count] + @previous_rolls[@roll_count + 1] == 10
  end

  def strike
    @previous_rolls[@roll_count] == 10
  end

  #refactor in class & test: strike(), spare()
end
