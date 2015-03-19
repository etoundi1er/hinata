json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :student_id, :course_id, :group_id, :status, :taken_at, :employee_id
  json.url attendance_url(attendance, format: :json)
end
