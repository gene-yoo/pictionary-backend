class Game < ApplicationRecord
  has_many :player_games
  has_many :players, through: :player_games
  has_many :images

  def currentImageURL
    self.images.last.data_url
  end

  def currentImageId
    self.images.last.id
  end

  def currentKeyword
    self.images.last.keyword
  end
end
