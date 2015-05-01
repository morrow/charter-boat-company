class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :name
      t.string :length
      t.string :builder
      t.datetime :added
      t.integer :speed
      t.integer :cockpit_size
      t.string :powertrain
      t.integer :passengers
      t.string :slug
      t.integer :avatar_id
      t.text :description

      t.timestamps null: false
    end
  end
end
