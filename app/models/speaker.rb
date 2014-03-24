class Speaker < ActiveRecord::Base
  # Validations
  validates :firstname, :lastname, :email, :theme, presence: true

  # Associations
  has_one :foto, as: :album

  # Nested Attributes
  accepts_nested_attributes_for :foto

  # Scopes
  scope :approved, -> { where(approved: true) }

  acts_as_list

  scope :sorted, ->{ order(:position) }

  def name
    "#{firstname} #{lastname}"
  end

end
