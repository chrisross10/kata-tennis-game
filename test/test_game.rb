require 'minitest/autorun'
require 'minitest/spec'
require_relative '../lib/game'

describe 'Tennis Game' do
  it 'begins Love-Love' do
    Game.new.score.must_equal 'Love-Love'
  end
end
