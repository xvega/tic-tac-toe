require 'spec_helper'

describe 'board creation' do

  before do
    @board_size = 3
    @board = Board.new(@board_size, ' ').create_board
  end

  it 'creates a not nil board' do
    expect(@board).to_not eq(nil)
  end

  it 'returns a board with the size and value given' do
    expect(@board.size).to eq(@board_size)
  end

  it 'prints the grid content when draw_grid is called' do
    board = Board.new(@board_size, ' ')
    expect { board.draw_grid(@board) }.to output(/\A[0-9]|\n|\||\s\Z/).to_stdout
  end

  it 'initializes the board with an uniq delimiter in the grid' do
    board = @board.map(&:uniq).uniq.size == 1
    expect(board).to eq(true)
  end

  it 'creates board if size is greater than 2' do
    board_size = @board.size
    expect(board_size).to be >= 2
  end

end