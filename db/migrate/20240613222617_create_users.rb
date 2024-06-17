class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :phone
      t.string :website
      t.string :address_street
      t.string :address_suite
      t.string :address_city
      t.string :address_zipcode
      t.string :address_geo_lat
      t.string :address_geo_lng
      t.string :company_name
      t.string :company_catch_phrase
      t.string :company_bs
      t.string :profile_photo_url

      t.timestamps
    end
  end
end
