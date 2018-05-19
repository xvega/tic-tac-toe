require 'spec_helper'

describe 'player creation' do

  before do
    @player = Player.new
  end

  it 'creates a cpu and human players with no nil values' do
    expect(@player.cpu && @player.human).to_not eq(nil)
  end

end