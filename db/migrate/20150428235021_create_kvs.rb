class CreateKvs < ActiveRecord::Migration
  def change
    create_table :kvs do |t|
      t.string :key
      t.text :value
      t.string :category
      t.string :slug

      t.timestamps null: false
    end
  end
end
