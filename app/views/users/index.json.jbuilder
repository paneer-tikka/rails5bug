json.array!(@users) do |user|
  json.extract! user, :id, :title, :first_name, :middle_name, :last_name, :email, :mobile, :gender, :dob, :password, :country_id, :state_id, :city_id, :location_id, :address, :pin_code, :status, :profile_picture, :owner_id, :owner_type, :api_key, :secret, :creator_id, :updater_id, :deleter_id
  json.url user_url(user, format: :json)
end
