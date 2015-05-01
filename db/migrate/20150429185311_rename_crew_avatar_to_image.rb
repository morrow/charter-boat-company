class RenameCrewAvatarToImage < ActiveRecord::Migration
  def change
    rename_column :crewmen, :avatar_id, :image_id
  end
end
