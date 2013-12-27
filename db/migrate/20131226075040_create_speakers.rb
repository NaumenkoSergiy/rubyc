class CreateSpeakers < ActiveRecord::Migration
  def change
    create_table :speakers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :theme
      t.text :summary

      t.timestamps
    end
  end
end
