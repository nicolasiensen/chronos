Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :facebook, '155905817834870', '20a150f190d52392867cd310019cd304'
  else
    provider :facebook, '209144812486329', '0133ab8e4322f5bcad14366ea9393253'
  end
end
