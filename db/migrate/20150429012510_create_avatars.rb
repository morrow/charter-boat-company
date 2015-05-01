class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :name
      t.string :url
      t.string :slug

      t.timestamps null: false
    end
  end
end
