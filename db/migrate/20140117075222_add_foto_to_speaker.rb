class AddFotoToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :foto, :string
  end
end
