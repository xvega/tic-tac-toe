class Board
  def initialize(size, value)
    @size = size
    @value = value
  end

  def create_board
    board = Array.new(@size)
    @size.times do |row_index|
      board[row_index] = Array.new(@size)
      @size.times do |column_index|
        board[row_index][column_index] = @value
      end
    end
    board
  end

  def draw_grid(board)
    puts '        ' + (0..board.size - 1).to_a.join('  |  ')
    board.each_with_index do |r, index|
      puts " #{index}     " + r.each { |p| p }.join('   | ')
    end
  end

end