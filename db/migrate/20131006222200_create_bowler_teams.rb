class CreateBowlerTeams < ActiveRecord::Migration
  def change
    create_table :bowler_teams do |t|
    	t.integer :bowler_id
    	t.integer :team_id
      t.timestamps
    end
  end
end
