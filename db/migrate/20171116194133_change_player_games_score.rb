class ChangePlayerGamesScore < ActiveRecord::Migration[5.1]
  def change
    change_column :player_games, :score, :integer, :default => 0
  end
end
