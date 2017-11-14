class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.integer :game_id
      t.text :data_url
      t.timestamps
    end
  end
end
