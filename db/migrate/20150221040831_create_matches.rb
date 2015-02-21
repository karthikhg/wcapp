class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team1_id
      t.integer :team2_id
      t.integer :team1_total
      t.integer :team2_total
      t.integer :team1_wickets
      t.integer :team2_wickets
      t.float :team1_overs
      t.float :team2_overs
      t.integer :winner
      t.boolean :tie

      t.timestamps null: false
    end
  end
end
