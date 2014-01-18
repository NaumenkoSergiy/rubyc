require 'spec_helper'

describe Speaker do
  # Validations
  it { should validate_presence_of :firstname }
  it { should validate_presence_of :lastname }
  it { should validate_presence_of :email }
  it { should validate_presence_of :theme }
  it { should validate_presence_of :summary }

  # Associations
  it { should have_one :foto }

  # Nested attributes
  it { should accept_nested_attributes_for :foto }

end
