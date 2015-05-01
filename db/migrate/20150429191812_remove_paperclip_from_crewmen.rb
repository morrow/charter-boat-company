class RemovePaperclipFromCrewmen < ActiveRecord::Migration
  def change
    remove_attachment :crewmen, :image
  end
end
