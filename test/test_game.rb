require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/game'

describe 'Tennis Game' do
  points = 'love-love'
  it 'begins love-love' do
    Game.new(points)
      .score.must_equal 'love-love'
  end

  it 'scores points for player 1' do
    Game.new(points)
      .player1_scores
      .score.must_equal '15-love'
  end
end
