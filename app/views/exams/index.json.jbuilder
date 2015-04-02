json.array!(@exams) do |exam|
  json.extract! exam, :id, :title, :description, :exam_date, :exam_category_id, :course_id
  json.url exam_url(exam, format: :json)
end
