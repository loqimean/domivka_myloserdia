FactoryBot.define do
  factory :invoice do
    file { Rack::Test::UploadedFile.new(Dir[Rails.root.join('spec', 'files', 'photos', '*')].sample) }
  end
end
