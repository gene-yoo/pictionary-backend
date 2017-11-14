class Game < ApplicationRecord
  has_many :player_games
  has_many :players, through: :player_games
  has_many :images

  def currentImage
    self.images.last.data_url
  end
end
