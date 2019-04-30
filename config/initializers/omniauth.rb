OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do

 provider :google_oauth2,
  '218927195192-si6d8lmm67ii3ts2grs4drel4klk413f.apps.googleusercontent.com', 'cHMsz6OWGZI1-gl7rFXt4HaW',
  {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

provider :facebook,
'2490426121241096',
'b7931f380b0e951d96e6aad14a98f506',
{:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}

provider :linkedin,
  "78ewllqk1cgqwk",
  "BM9yvpHFk8Kb4lfR",
 {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}

 # provider :twitter,
 #  "CajpOa06R52RigBQRW1rTCVjl ",
 #  "ZF1AUNfEaHBMO0OFJKep0LAhoJoH3qNIfto7m7k70UIgK30ZO7",
 # {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}

  provider :twitter, 'CajpOa06R52RigBQRW1rTCVjl', 'ZF1AUNfEaHBMO0OFJKep0LAhoJoH3qNIfto7m7k70UIgK30ZO7'




end