CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.storage = :fog
    config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => 'AKIAIACRKP2XRROTFVWQ',
    :aws_secret_access_key => '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',
  }
  config.fog_directory  = 'datass'
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  

end