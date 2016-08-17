require 'rspec'
require './game' # require_relative 'game' - also works

describe 'Game' do

  it 'can score a gutter ball game' do
    game = Game.new
    20.times do
      game.roll(0)
    end
    expect(game.score).to eq(0)
  end

  it 'can score a game with 1 in each frame' do
    game = Game.new
    20.times do
      game.roll(1)
    end
    expect(game.score).to eq(20)
  end

  it 'rolls spare followed by 3' do
    game = Game.new
    game.roll(5)
    game.roll(5)
    game.roll(3)
    17.times do
      game.roll(0)
    end
    expect(game.score).to eq(16)
  end

  it 'rolls a strike followed by a 3 & 4' do
    game = Game.new
    game.roll(10)
    game.roll(3)
    game.roll(4)
    16.times do
      game.roll(0)
    end
    expect(game.score).to eq(24)
  end

  it 'rolls a perfect game' do
    game = Game.new
    12.times do
      game.roll(10)
    end
  end
end

#refactor: let, begin
