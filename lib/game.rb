class Game
  def initialize(points)
    @points = points
  end

  def score
    @points
  end

  def player1_scores
    Game.new('15-love')
  end
end
