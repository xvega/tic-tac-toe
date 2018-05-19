require 'spec_helper'

describe 'Main I/O' do

  before do
    @main = Main.new
  end

  it 'shows the message with the letters assigned to user and computer to STDOUT' do
    expect { @main.game_loop }.to output(/Cpu player|Human player/).to_stdout
  end

end
