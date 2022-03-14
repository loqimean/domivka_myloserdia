FactoryBot.define do
  factory :site_setting do
    uk_idea_of_project { Faker::Lorem.paragraph_by_chars(number: 250) }
    en_idea_of_project { Faker::Lorem.paragraph_by_chars(number: 250) }
    main_photo { Rack::Test::UploadedFile.new(Dir[Rails.root.join('spec', 'files', 'photos', '*')].sample) }
    uk_address { Faker::Address.full_address }
    en_address { I18n.locale = :en; Faker::Address.full_address }
    email { Faker::Internet.email }
    uk_payment_details {
      'ПрАТ "ВНЗ "МАУП", 03039, м. Київ, вул. Фрометівська, 2, АТ «ТАСкомбанк», ' \
      'Код ЄДРПОУ 00127522, IBAN  UA443395000000026008040388001, Призначення ' \
      'платежу: за навчання ПІБ (повністю), код групи, Тел. (044) 496-97-62, 298-51-21'
    }
    en_payment_details {
      'PJSC "University" MAUP ", 03039, Kyiv, 2 Frometivska Street, JSC" TAScombank ", '\
      'USREOU code 00127522, IBAN UA443395000000026008040388001, Purpose' \
      'payment: for training full name (in full), group code, Tel. (044) 496-97-62, 298-51-21 '
    }
    facebook_url { Faker::Internet.url }
    telegram_url { Faker::Internet.url }
    instagram_url { Faker::Internet.url }
  end
end
