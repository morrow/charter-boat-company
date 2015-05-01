class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.datetime :start
      t.datetime :end
      t.boolean :active
      t.references :boat, index: true
      t.float :full_day
      t.float :half_day
      t.float :night
      t.float :full_day_pax
      t.float :half_day_pax
      t.float :night_pax
      t.float :discount

      t.timestamps null: false
    end
    add_foreign_key :rates, :boats
  end
end
