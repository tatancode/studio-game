require 'minitest/autorun'
require_relative '../../lib/studio_game/player'
require_relative '../../lib/studio_game/game'


class GameTest < Minitest::Test

  def setup
    @game = Game.new("1 v 1")

    @player_1 = Player.new("lukas")
    @player_2 = Player.new("tuck")
    $stdout = StringIO.new
  end
  def test_has_no_players_initially

    assert_empty @game.players
  end

  def test_add_players
    @game.add_player(@player_1)
    @game.add_player(@player_2)

    refute_empty @game.players
    assert_equal [@player_1,@player_2], @game.players
  end

  def test_number_rolled_increases_player_health
    @game.add_player(@player_1)

    @game.stub(:roll_die,6) do
      @game.play

      assert_equal 101, @player_1.health
    end
  end

  def test_number_rolled_decreases_player_health
    @game.add_player(@player_1)

    @game.stub(:roll_die,2) do
      @game.play

      assert_equal 99, @player_1.health
    end
  end
end