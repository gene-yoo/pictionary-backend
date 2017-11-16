class RemoveKeywordFromImages < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :keyword
  end
end
