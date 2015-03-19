json.array!(@courses) do |course|
  json.extract! course, :id, :course_name, :course_code, :group_id, :course_category
  json.url course_url(course, format: :json)
end
