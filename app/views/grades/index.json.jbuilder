json.array!(@grades) do |grade|
  json.extract! grade, :id, :student_id, :exam_id, :score, :feedback
  json.url grade_url(grade, format: :json)
end
