OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '411710734725-t0heo41otu4mk0t4h9a56k2pd3chlojq.apps.googleusercontent.com', 'bpYBc6zVzSqY3NJ3Goo970sP', 
    {
      client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}},
      scope: "email, profile, contacts"
    }
end