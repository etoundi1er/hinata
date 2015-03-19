json.array!(@students) do |student|
  json.extract! student, :id, :first_name, :last_name, :username, :date_of_birth, :place_of_birth, :gender, :phone, :email, :group, :enrollment_date, :guardian_id, :address_line, :city, :country, :is_active, :is_deleted, :photo_data
  json.url student_url(student, format: :json)
end
