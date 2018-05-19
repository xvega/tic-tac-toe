class Player
  attr_reader :cpu, :human

  def initialize
    @cpu = rand(0..1).zero? ? 'X' : 'O'
    @human = @cpu == 'X' ? 'O' : 'X'
  end
end