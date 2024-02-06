FactoryBot.define do
  factory :legislator do
    sequence(:id) { |n| n }

    name { Faker::Name.name }
  end
end