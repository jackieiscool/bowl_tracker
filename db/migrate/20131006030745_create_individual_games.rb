class CreateIndividualGames < ActiveRecord::Migration
  def change
    create_table :individual_games do |t|
    	t.integer :score
    	t.integer :bowler_id
    	t.integer :team_game_id
      t.timestamps
    end
  end
end
