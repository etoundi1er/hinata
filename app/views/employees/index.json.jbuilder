json.array!(@employees) do |employee|
  json.extract! employee, :id, :first_name, :last_name, :date_of_birth, :employee_category, :employee_level, :experience_years, :employee_qualification, :email, :phone, :address_line, :city, :start_date
  json.url employee_url(employee, format: :json)
end
