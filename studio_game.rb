
# Player Class definition
class Player
  #attributes
  #attr_reader :name, :health
  attr_accessor :name, :health

  #initialize is Ruby's constructor
  def initialize(name,health = 100)
    @name = name.capitalize
    @health = health
  end


  # this method is executed when the puts method is run on a Player object
  def to_s
    "I'm #{@name.capitalize} with a health of #{@health} and a score of #{score}"
  end

  # helper methods
  def score
    @health + @name.length
  end

  def boost
    @health += 1
  end

  def drain
    @health -= 1
  end

  # method that changes a player's health based on the roll of a die
  def play(player)
    # if low number 1 or 2, drain player health
    number_rolled = rand(1..6)
    if number_rolled < 3
      player.drain
      puts "#{player.name} got drained :("
    # if medium number 3 or 4, skip the player - no changes
    elsif number_rolled > 2 && number_rolled < 5
      puts "#{player.name} got skipped lol"
    # if high number 5 or 6, boost the player
    else
      player.boost
      puts "#{player.name} got boosted :)"
    end
  end
end

#initializing objects
player_one = Player.new("Finn", 60)
puts player_one
player_one.play(player_one)
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
