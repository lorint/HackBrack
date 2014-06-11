class Team < ActiveRecord::Base
	has_many :team1_games, class_name: "Game", inverse_of: :team1, foreign_key: :team1_id
	has_many :team2_games, class_name: "Game", inverse_of: :team2, foreign_key: :team2_id

	# Convenience method to find all upcoming games, no matter if we're team 1 or 2
	def games
		ret = self.team1_games
		ret += self.team2_games
		ret
	end

	# Convenience method to find all upcoming opponents
	def opponents
		# Find all current opponents in the mix
		ret = []
		self.team1_games.each do |g|
			ret << g.team2
		end
		self.team2_games.each do |g|
			ret << g.team1
		end
		ret
	end
end
