CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'aws',                        # required
    :aws_access_key_id      => ENV['FOG_AWS_ACCESS_KEY_ID'],                        # required
    :aws_secret_access_key  => ENV['FOG_AWS_SECRET_ACCESS_KEY'],                        # required
    :region                 => ENV['FOG_REGION'],                  # optional, defaults to 'us-east-1'
    :host                   => ENV['FOG_HOST'],             # optional, defaults to nil
    :endpoint               => ENV['FOG_ENDPOINT'] # optional, defaults to nil
  }
  config.fog_directory  = ENV['FOG_DIRECTORY']                     # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
