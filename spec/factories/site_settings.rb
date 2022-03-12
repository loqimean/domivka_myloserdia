FactoryBot.define do
  factory :site_setting do
    uk_idea_of_project { Faker::Lorem.paragraph }
    en_idea_of_project { Faker::Lorem.paragraph }
    main_photo { Rack::Test::UploadedFile.new(Dir[Rails.root.join('spec', 'files', 'photos', '*')].sample) }
    facebook_url { Faker::Internet.url }
    telegram_url { Faker::Internet.url }
    instagram_url { Faker::Internet.url }
  end
end
