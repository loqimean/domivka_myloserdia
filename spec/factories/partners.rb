FactoryBot.define do
  factory :partner do
    logo { Rack::Test::UploadedFile.new(Dir[Rails.root.join('spec', 'files', 'photos', '*')].sample) }
  end
end
