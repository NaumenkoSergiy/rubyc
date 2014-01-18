class Foto < ActiveRecord::Base
  belongs_to :album, polymorphic: true
  mount_uploader :image, FotoUploader
end
