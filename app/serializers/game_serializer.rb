class GameSerializer < ActiveModel::Serializer
  attributes :id, :currentImageURL, :currentImageId, :currentKeyword, :recentMessages, :currentDrawerId, :currentDrawerUsername
end
