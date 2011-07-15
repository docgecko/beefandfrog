Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development?
    provider :facebook, '182343561827821', 'f2fef41549ef50afc1c88ac03be5a25b'
  else
    provider :facebook, '130434083709354', '0652adb4615250167a32ee5fbb5b7651'
  end
end