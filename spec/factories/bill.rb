FactoryBot.define do
  factory :bill do
    sponsor factory: :legislator

    sequence(:id) { |n| n }

    title { Faker::Lorem.sentence }
  end
end