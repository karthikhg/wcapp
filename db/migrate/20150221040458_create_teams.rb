class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :wins
      t.integer :losses
      t.integer :ties
      t.integer :points
      t.float :nrr
      t.integer :runs_for
      t.float :overs_for
      t.integer :runs_against
      t.float :overs_against
      t.integer :pool_id

      t.timestamps null: false
    end
  end
end
