class GameLogic

  attr_accessor :winner

  def initialize
    @winner = nil
  end

  protected

  def check_rows(board)
    true
  end

  def generate_random_coord
    rand(0..2).to_s + rand(0..2).to_s
  end

end