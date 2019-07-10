OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

 provider :google_oauth2,
  'ap-key', 'secret-key',
  {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

provider :facebook,
'api-key',
'secret-key',
{:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}

provider :linkedin,
  "api-key",
  "secret-key",
 {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}

 
  provider :twitter, 'api-key', 'secret-key'




end
