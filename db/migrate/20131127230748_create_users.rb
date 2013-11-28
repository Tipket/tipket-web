class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password
      t.string :twitter_token
      t.string :facebook_token
      t.string :google_token
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
