class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :title
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :email
      t.string :mobile
      t.integer :gender
      t.date :dob
      t.string :password
      t.bigint :country_id
      t.bigint :state_id
      t.bigint :city_id
      t.bigint :location_id
      t.string :address
      t.string :pin_code
      t.integer :status
      t.string :profile_picture
      t.bigint :owner_id
      t.string :owner_type
      t.string :api_key
      t.string :secret

      t.timestamps
      t.userstamps
    end
  end
end
