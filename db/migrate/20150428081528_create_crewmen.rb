class CreateCrewmen < ActiveRecord::Migration
  def change
    create_table :crewmen do |t|
      t.string :name
      t.text :bio
      t.string :license
      t.integer :avatar_id
      t.string :slug

      t.timestamps null: false
    end
  end
end
