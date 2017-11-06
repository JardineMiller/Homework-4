require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeamTest < MiniTest::Test
	def setup
		@team = SportsTeam.new("Bristol City", ["Bobby Reid", "Joe Bryan", "Korey Smith"], "Lee Johnson")
	end

	def test_check_player__player_present
		assert_equal(true, @team.check_player("Bobby Reid"))
	end	
	def test_check_player__player_not_present
		assert_equal(false, @team.check_player("Lee Tomlin"))
	end

	def test_add_player
		@team.add_player("Aden Flint")
		assert_equal(true, @team.check_player("Aden Flint"))
	end


	def test_result__win
		@team.result("W")
		assert_equal(3, @team.points)
	end	
	def test_result__draw
		assert_equal(1, @team.result("D"))
	end	
	def test_result__loss
		assert_equal(0, @team.result("L"))
	end


end