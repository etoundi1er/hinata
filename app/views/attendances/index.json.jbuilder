json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :student_id, :attendance_register_id, :status, :notes
#   json.url attendance_url(group_attendance_url format: :json)
end
