puts 'Start seeding SituationPhoto'
FactoryBot.create_list(:situation_photo, 20)
puts 'success!'
puts 'Start seeding ActivityPhoto'
FactoryBot.create_list(:activity_photo, 20)
puts 'success!'
puts 'Start seeding Invoices'
FactoryBot.create_list(:invoice, 20)
puts 'success!'
puts 'Start seeding SiteSetting'
FactoryBot.create(:site_setting)
puts 'success!'
puts 'Start seeding user'
FactoryBot.create(:user)
puts 'success!'
