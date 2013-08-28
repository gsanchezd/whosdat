Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "291290447680437", "fa8ae2731ab0ed4e7ec5c8f24022e908"
end