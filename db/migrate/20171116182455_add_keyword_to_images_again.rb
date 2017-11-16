class AddKeywordToImagesAgain < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :keyword, :string
  end
end
