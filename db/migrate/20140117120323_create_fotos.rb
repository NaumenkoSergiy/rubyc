class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.references :album, polymorphic: true, index: true
      t.string :image

      t.timestamps
    end
  end
end
