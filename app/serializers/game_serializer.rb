class GameSerializer < ActiveModel::Serializer
  attributes :id, :currentImageURL, :currentImageId
end
