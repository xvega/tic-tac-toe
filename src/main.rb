#!/usr/bin/ruby
require File.expand_path("../../src/player", __FILE__)
require File.expand_path("../../src/board", __FILE__)

class Main < Board
  def initialize
    @default_size = 3
    @user_input = nil
    @board = Board.new(@default_size, ' ').create_board
    @init_board = Board.new(@default_size, ' ')
    @player = Player.new
  end

  def game_loop
    p "Cpu player:   #{@player.cpu}"
    p "Human player:  #{@player.human}"
  end
end

main = Main.new
main.game_loop