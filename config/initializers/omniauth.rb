Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '274845445906273', '0b7da014298093bb66e010c0b12d1060'
  provider :twitter, '7tpvkdTWgeeSrN4oOXQw', 'wznMtnX8qo5iD5jhKlDZpVvxoJcGb0LviJZXKxlmo'
end
