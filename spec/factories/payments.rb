FactoryBot.define do
  factory :payment do
    name { Faker::Name.name }
    sum { Faker::Number.decimal(l_digits: 2) }
  end
end
