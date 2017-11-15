class AddIsDrawerToPlayerGames < ActiveRecord::Migration[5.1]
  def change
    add_column :player_games, :is_drawer, :boolean, default: false
  end
end
