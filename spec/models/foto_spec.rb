require 'spec_helper'

describe Foto do
  subject{FactoryGirl.create :foto}
  it { should belong_to :album }
end
