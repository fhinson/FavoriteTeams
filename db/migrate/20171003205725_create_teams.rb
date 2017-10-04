class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :division
      t.integer :rating

      t.timestamps null: false
    end
  end
end
