FactoryBot.define do
  factory :legislator do
    sequence(:id) { |n| n }

    name { "John Doe" }
  end
end