require 'spec_helper'

describe 'player creation' do

  before do
    @player = Player.new
  end

  it 'creates a cpu and human players with no nil values' do
    expect(@player.cpu && @player.human).to_not eq(nil)
  end

  it 'assigns a different value to each player' do
    expect(@player.cpu != @player.human).to eq(true)
  end

  it 'picks a winner based on a row for a default 3x3 grid' do
    board = [['X','X','X'],[' ', ' ', 'O'],['O','O',' ']]
    expect(@player.win?(board)).to eq(true)
  end

  it 'picks a winner based on a column for a default 3x3 grid' do
    board = [['X','X','O'],['X', ' ', 'O'],['O',' ','O']]
    expect(@player.win?(board)).to eq(true)
  end

  it 'picks a winner based on a diagonal for a default 3x3 grid' do
    board = [['X','O','O'],[' ', 'X', 'O'],[' ',' ', 'X']]
    expect(@player.win?(board)).to eq(true)
  end

end
