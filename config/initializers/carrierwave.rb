CarrierWave.configure do |config|
  config.fog_credentials = {
        provider:                          'Google',
        google_storage_access_key_id:       Rails.application.credentials.google_storage_access_key_id,
        google_storage_secret_access_key:   Rails.application.credentials.google_storage_secret_access_key
      }

      config.fog_directory = 'home-of-mercy'
  end
