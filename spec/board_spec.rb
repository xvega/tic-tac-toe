require 'spec_helper'

describe 'board creation' do

  before do
    @board_size = 3
    @board = Board.new(@board_size, ' ').create_board
  end

  it 'returns a board with the size and value given' do
    expect(@board.size).to eq(@board_size)
  end

end