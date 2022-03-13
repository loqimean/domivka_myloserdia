FactoryBot.define do
  factory :user do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { 'test@mail.io' }
    password { 'password1q' }
  end
end
