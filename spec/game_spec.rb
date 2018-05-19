require 'spec_helper'

describe 'game_creation' do

  before do
    @board_size = 3
    @game = GameLogic.new
    @board = Board.new(@board_size, ' ').create_board
    @coordinate = @game.generate_cpu_move(@board).join()
  end

  it 'generates a valid coordinate of two numbers' do
    expect(@coordinate).to match(/\A[0-#{@board_size - 1}]{2}\Z/)
  end

end
