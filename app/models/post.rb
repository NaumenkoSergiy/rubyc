class Post < ActiveRecord::Base
  scope :published, ->{ where published: true }
  scope :recent,    ->{ order 'created_at DESC' }
end
