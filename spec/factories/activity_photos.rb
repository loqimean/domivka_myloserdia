FactoryBot.define do
  factory :activity_photo do
    photo { Rack::Test::UploadedFile.new(Dir[Rails.root.join('spec', 'files', 'photos', '*')].sample) }
  end
end
