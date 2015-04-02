json.array!(@exam_categories) do |exam_category|
  json.extract! exam_category, :id, :title
  json.url exam_category_url(exam_category, format: :json)
end
