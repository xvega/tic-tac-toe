class GameLogic

  attr_accessor :winner

  def initialize
    @winner = nil
    @delimiter = ' '
  end

  protected

  def check_rows(board)
    board.each do |row|
      @winner = row.uniq.first if row.uniq.size == 1 && !row.uniq.include?(@delimiter)
    end
    true if @winner
  end

  def check_diagonals(board)
    diagonal = Matrix.rows(board).each(:diagonal).to_a
    @winner = diagonal.uniq.first if diagonal.uniq.size == 1 && !diagonal.uniq.include?(@delimiter)
    true if @winner
  end

  def generate_random_coord
    rand(0..2).to_s + rand(0..2).to_s
  end

end