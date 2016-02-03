OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1533513480282656', 'ce484e6da69ffa655cbab0f9eca45a3b'
end