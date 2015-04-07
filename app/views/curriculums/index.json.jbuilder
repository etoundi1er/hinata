json.array!(@curriculums) do |curriculum|
  json.extract! curriculum, :id, :cur_title
  json.url curriculum_url(curriculum, format: :json)
end
