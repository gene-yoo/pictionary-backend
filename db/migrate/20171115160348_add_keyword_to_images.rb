class AddKeywordToImages < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :keyword, :string, default: "hotdog"
  end
end
