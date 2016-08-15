require 'rspec'
require './game' # require_relative 'game' - also works

describe 'Game' do

  it 'creates a game object' do
    @game = Game.new
    expect(@game).to be_instance_of(Game) # be_kind_of - also works
  end

 it 'rolls the bowling ball' do
    @game.roll(5)
    expect(@game.roll(5)).to eq(5)
 end

end
