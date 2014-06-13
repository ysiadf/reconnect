class Contact < ActiveRecord::Base
  def self.populate(user)
    google_contacts = GoogleClient.new(user.oauth_token).get_contacts(nil, 10)
    google_contacts
  end
end
