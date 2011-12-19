Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'rsxJbi59tDNvXwNEx2PZcA', '66WrBUz7CcgOSSicnQ2cuZVpeUpsg9bBVzstB4E2C4'
  provider :facebook, '207631019295190', '5d5c082fb3d43a94b2d2a6a9433aca00'
end
