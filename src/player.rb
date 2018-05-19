require File.expand_path("../../src/game_logic", __FILE__)
require 'matrix'

class Player < GameLogic
  attr_reader :cpu, :human

  def initialize
    @cpu = rand(0..1).zero? ? 'X' : 'O'
    @human = @cpu == 'X' ? 'O' : 'X'
    @game = GameLogic.new
  end

  def win?(board)
    return true if @game.check_rows(board)
    return true if @game.check_rows(board.transpose)
    return true if @game.check_diagonals(board)
  end

  def print_winner
    @game.winner == @human ? 'Human' : 'CPU'
  end
end