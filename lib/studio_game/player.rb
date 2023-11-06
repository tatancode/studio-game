class Player
  #attributes
  #attr_reader :name, :health
  attr_accessor :name, :health

  #initialize seems to be Ruby's constructor
  def initialize(name,health = 100)
    @name = name.capitalize
    @health = health
  end


  # this method is executed when the puts method is run on a Player object
  def to_s
    "I'm #{@name.capitalize} with a health of #{@health}"
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
end
