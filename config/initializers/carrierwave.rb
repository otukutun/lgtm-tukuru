CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    use_iam_profile: false,
    region: ENV['AWS_REGION'],
    host: nil,
    endpoint: nil
  }
  config.fog_directory  = ENV['AWS_BUCKET']
  config.fog_public = true
  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
  config.asset_host = ENV['AWS_CLOUDFRONT_HOST']
end
