json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :username, :date_of_birth, :gender, :address_line, :city, :email, :phone
  json.url user_url(user, format: :json)
end
