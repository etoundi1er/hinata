json.extract! @attendance_register, :id, :group_id, :period_id, :created_at, :updated_at
json.attendances @attendance_register.attendances, :student_id, :status, :notes