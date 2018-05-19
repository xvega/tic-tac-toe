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
end