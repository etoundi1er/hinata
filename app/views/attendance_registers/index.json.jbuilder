json.array!(@attendance_registers) do |attendance_register|
  json.extract! attendance_register, :id, :group_id, :period_id
  json.url attendance_register_url(attendance_register, format: :json)
end
