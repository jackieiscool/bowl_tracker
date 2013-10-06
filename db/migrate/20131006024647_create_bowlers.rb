class CreateBowlers < ActiveRecord::Migration
  def change
    create_table :bowlers do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :password_digest
    	t.integer :team_id
      t.timestamps
    end
  end
end
