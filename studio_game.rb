require_relative 'lib/studio_game/player'
require_relative 'lib/studio_game/game'

#initializing objects
player_one = Player.new("Finn", 60)

player_two = Player.new("Phoebs", 60)

player_three = Player.new("Tuck",60)

player_four = Player.new("Celeste",60)

# game object
game = Game.new("Winner takes all!")

game.add_player(player_one)
game.add_player(player_two)
game.add_player(player_three)
game.add_player(player_four)

game.play