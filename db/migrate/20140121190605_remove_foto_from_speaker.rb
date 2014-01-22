class RemoveFotoFromSpeaker < ActiveRecord::Migration
  def change
    remove_column :speakers, :foto
  end
end
