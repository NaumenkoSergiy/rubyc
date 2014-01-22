# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :foto do
    album nil
    image { File.open(Rails.root.join('spec/files/foto.jpg')) }
  end
end
