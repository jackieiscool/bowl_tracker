class AddColumnTeamIdToBowlers < ActiveRecord::Migration
  def change
  	add_column :bowlers, :team_id, :integer
  	add_column :bowlers, :name, :string
  end
end
