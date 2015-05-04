json.array!(@attendance_registers) do |attendance_register|
  json.extract! attendance_register, :id, :group_id, :period_id, :created_at
  json.attendances @attendance_register.attendances, :student_id, :status, :notes
  json.url group_attendance_register_url(@group, attendance_register, format: :json)
end
