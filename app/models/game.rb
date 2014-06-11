class Game < ActiveRecord::Base
  belongs_to :next_game, class_name: "Game", foreign_key: :game_id
  has_many :former_games, class_name: "Game", foreign_key: :game_id

  belongs_to :team1, class_name: "Team", inverse_of: :team1_games
  belongs_to :team2, class_name: "Team", inverse_of: :team2_games

  belongs_to :table
end
