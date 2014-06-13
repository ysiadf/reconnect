class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :full_name
      t.string :given_name
      t.string :family_name
      t.string :title
      t.string :email
      t.string :google_id
      t.string :facebook_address
      t.string :twitter_handle

      t.timestamps
    end
  end
end
