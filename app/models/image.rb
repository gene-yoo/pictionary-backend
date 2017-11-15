require 'faker'
class Image < ApplicationRecord
  belongs_to :game

  # before_save :setkeyword
  #
  # def setkeyword
  #   self.keyword = Image.keyword.sample
  # end
  #
  # def self.keyword
  #   ["cat", "dog", "tree"]
  # end
end
