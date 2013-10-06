class CreateTeamGames < ActiveRecord::Migration
  def change
    create_table :team_games do |t|
    	t.integer :score
      t.timestamps
    end
  end
end
