CarrierWave.configure do |config|
  config.cache_dir = "#{Rails.root}/tmp/uploads"

  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['FOG_AWS_ACCESS_KEY_ID'],
    :aws_secret_access_key  => ENV['FOG_AWS_SECRET_ACCESS_KEY'],
  }
  config.fog_directory  = ENV['FOG_DIRECTORY']
end
