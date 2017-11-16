class MessageSerializer < ActiveModel::Serializer
  attributes :id, :content, :player_username, :player_id, :game_id, :guessed_correctly, :player_score

end
