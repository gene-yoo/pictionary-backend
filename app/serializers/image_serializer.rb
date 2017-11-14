class ImageSerializer < ActiveModel::Serializer
  attributes :id, :data_url, :game_id
end
