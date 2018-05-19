#!/usr/bin/ruby
require File.expand_path("../../src/player", __FILE__)
require File.expand_path("../../src/board", __FILE__)

class Main < Board
  def initialize
    @default_size = request_board_size
    @user_input = nil
    @board = Board.new(@default_size, ' ').create_board
    @init_board = Board.new(@default_size, ' ')
    @player = Player.new
  end

  def request_board_size
    p 'Welcome to Tic-Tac-Toe'
    p 'Please enter a number from 3 to 9 for the board size'
    board_size = gets.chomp
    until board_size =~ /\A[3-9]\Z/
      p 'Please enter a valid number'
      board_size = gets.chomp
    end
    board_size.to_i
  end


  def game_loop
    p "Cpu player:   #{@player.cpu}"
    p "Human player:  #{@player.human}"
    while @user_input != 'q'
      @init_board.draw_grid(@board)
      next unless initial_message =~ /\A[0-#{@board.size - 1}]{2}\Z/
      fill_grid(@user_input.split(''))
      game_over if @player.win?(@board) || @board.flatten.size == @default_size * 2
    end
  end

  private

  def initial_message
    p 'Enter the position, enter q to exit'
    @user_input = gets.chomp
  end

  def fill_grid(inputs)
    unless @player.win?(@board)
      @board[inputs[0].to_i][inputs[1].to_i] = @player.human
      position = @player.generate_cpu_move(@board)
      @board[position[0].to_i][position[1].to_i] = @player.cpu
    end
  end

  def game_over
    @init_board.draw_grid(@board)
    p "The winner is: #{@player.print_winner}"
    p 'Enter C to play again or any other key to exit'
    @user_input = gets.chomp
    @user_input == 'c' ? initialize : exit!
  end

end

main = Main.new
main.game_loop