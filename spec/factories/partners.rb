FactoryBot.define do
  factory :partner do
    logo { Rack::Test::UploadedFile.new(Dir[Rails.root.join('spec', 'files', 'partner_logos', '*')].sample) }
    web_site_url { Faker::Internet.url }
  end
end
