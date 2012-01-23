Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '8qHOjGgzxLNV8RZRiL5sIQ', 'KI9RUc2iiaFroiLrm9rJqSzasjrJJonnjB1cvKTlM'
  provider :facebook, '329140513775866', '2fee52ce7cc2b01f4c35b3280282387a'
end
