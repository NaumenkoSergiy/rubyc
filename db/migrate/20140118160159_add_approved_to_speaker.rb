class AddApprovedToSpeaker < ActiveRecord::Migration
  def change
    add_column :speakers, :approved, :boolean, null: false, default: false
  end
end
