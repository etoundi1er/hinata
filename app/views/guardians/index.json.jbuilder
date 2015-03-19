json.array!(@guardians) do |guardian|
  json.extract! guardian, :id, :first_name, :last_name, :relation, :phone, :email, :occupation
  json.url guardian_url(guardian, format: :json)
end
