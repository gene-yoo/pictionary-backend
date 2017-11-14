class CreatePlayerGames < ActiveRecord::Migration[5.1]
  def change
    create_table :player_games do |t|
      t.integer :game_id
      t.integer :player_id
      t.integer :score
    end
  end
end
