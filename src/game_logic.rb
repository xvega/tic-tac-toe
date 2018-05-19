class GameLogic

  attr_accessor :winner

  def initialize
    @winner = nil
    @delimiter = ' '
  end

  def generate_cpu_move(board)
    coordinate = generate_random_coord(board.size).split('')
    until coordinate.nil?
      break if board[coordinate[0].to_i][coordinate[1].to_i] == ' '
      coordinate = generate_random_coord(board.size).split('')
    end
    coordinate
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

  def generate_random_coord(board_size)
    rand(0..board_size - 1).to_s + rand(0..board_size - 1).to_s
  end

end