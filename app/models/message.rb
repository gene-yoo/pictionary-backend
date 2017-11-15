class Message < ApplicationRecord
  belongs_to :player_game

  def player_username
    self.player_game.player.username
  end
  def player_id
    self.player_game.player.id
  end
  def game_id
    self.player_game.game.id
  end
  def game
    self.player_game.game
  end

  def guessed_correctly
    self.game.currentKeyword == self.content
  end
end
