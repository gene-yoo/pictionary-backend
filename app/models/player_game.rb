class PlayerGame < ApplicationRecord
  belongs_to :player
  belongs_to :game
  has_many :messages


end
