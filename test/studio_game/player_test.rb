require 'minitest/autorun'
require_relative '../../lib/studio_game/player'

class PlayerTest < Minitest::Test
  def test_has_a_capitalized_title
    player = Player.new("lukas")

    assert_equal "Lukas", player.name
  end

  def test_has_an_initial_health
    player = Player.new("lukas")

    assert_equal 100, player.health
  end

  def test_has_a_string_representation
    player = Player.new("lukas")

    assert_equal "I'm Lukas with a health of 100", player.to_s
  end

  def test_boost_increases_health_by_1
    player = Player.new("lukas")

    player.boost

    assert_equal 101,player.health
  end

  def test_drain_decreases_health_by_1
    player = Player.new("lukas")

    player.drain

    assert_equal 99,player.health
  end
end