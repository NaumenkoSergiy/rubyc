class Speaker < ActiveRecord::Base
  validates :firstname, :lastname, :email, :theme, :summary, presence: true

  def name
    "#{firstname} #{lastname}"
  end

end
