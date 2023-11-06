class Game
  attr_accessor :title, :players

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players.append(player)
  end

  def roll_die
    rand(1..6)
  end
  def play
    # before playing
    puts "\nLet's play #{@title}"

    puts "Before playing:"
    puts @players
    puts
    #iterate through players array and play
    @players.each do |player|
      number_rolled = roll_die
      # if low number 1 or 2, drain player health
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
    # after playing
    puts
    puts "After playing:"
    puts @players
  end

end