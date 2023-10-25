
# Player Class definition
class Player
  #attributes
  #attr_reader :name, :health
  attr_accessor :name, :health
  def initialize(name,health = 100)
    @name = name.capitalize
    @health = health
  end


  def to_s
    "I'm #{@name.capitalize} with a health of #{@health} and a score of #{score}"
  end

  def score
    @health + @name.length
  end

  def boost
    @health += 1
  end

  def drain
    @health -= 1
  end
end

#initializing objects
player_one = Player.new("Finn", 10)
player_one.score
puts player_one


=begin
player_two = Player.new("Phoebs", 10)
puts player_two
player_two.drain
puts player_two

player_three = Player.new("Tuck")
puts player_three
player_three.boost
player_three.boost
puts player_three

player_four = Player.new("Celeste")
puts player_four
player_four.drain
player_four.boost
puts player_four
=end
