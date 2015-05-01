class AddAttachmentImageToCrewmen < ActiveRecord::Migration
  def self.up
    change_table :crewmen do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :crewmen, :image
  end
end
