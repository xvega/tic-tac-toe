class GameLogic

  attr_accessor :winner

  def initialize
    @winner = nil
  end

  protected

  def check_rows(board)
    board.each do |row|
      @winner = row.uniq.first if row.uniq.size == 1 && !row.uniq.include?(' ')
    end
    true if @winner
  end

  def generate_random_coord
    rand(0..2).to_s + rand(0..2).to_s
  end

end