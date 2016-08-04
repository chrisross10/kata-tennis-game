require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/game'

describe 'Tennis Game' do
  it 'begins love-love' do
    points = { 'love-love' => '' }
    Game.new(points)
      .score.must_equal 'love-love'
  end

  it 'scores points for player 1' do
    points = { 'love-love' => ['15-love', 'love-15'],
               '15-love' => ['30-love', '15-15'] }
    Game.new(points)
      .player1_scores
      .player1_scores
      .score.must_equal '30-love'
  end

  it 'scores points for player 2' do
    points = { 'love-love' => ['love-15'],
               'love-15' => ['love-30', '15-15'] }
    Game.new(points)
      .player2_scores
      .player2_scores
      .score.must_equal 'love-30'
  end
end
