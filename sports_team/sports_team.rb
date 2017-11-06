class SportsTeam
	attr_reader :name
	attr_accessor :players, :coach, :points

	def initialize(name, players, coach)
		@name = name
		@players = players
		@coach = coach
		@points = 0
	end

	def add_player(player_name)
		@players << player_name
	end

	def check_player(player_name)
		@players.include?(player_name)
	end

	def result(result)
		@points += 3 if result == "W"
		@points += 1 if result == "D"
		@points
	end
end