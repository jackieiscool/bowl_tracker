class AddTeamIdToTeamGames < ActiveRecord::Migration
  def change
    add_column :team_games, :team_id, :integer
  end
end
