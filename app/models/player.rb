class Player < ApplicationRecord
  has_many :player_games
  has_many :games, through: :player_games
end
