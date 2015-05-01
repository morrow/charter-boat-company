class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :category
      t.string :location
      t.string :public

      t.timestamps null: false
    end
  end
end
