# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :speaker do
    firstname { Faker::Name.first_name }
    lastname  { Faker::Name.last_name }
    email     { Faker::Internet.email }
    theme     { Faker::Lorem.sentence }
    summary   { Faker::Lorem.paragraph }

    after(:create) do |speaker, evaluate|
      speaker.foto = FactoryGirl.create :foto
    end
  end
end
