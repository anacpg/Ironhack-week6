class RenameColumnRegistrations < ActiveRecord::Migration
  def change
    rename_column :registrations, :players_id, :player_id
    rename_column :registrations, :tournaments_id, :tournament_id

  end
end
