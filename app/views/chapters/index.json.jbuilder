json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :chapter_title, :chapter_description, :chapter_start_date, :chapter_end_date, :course_id
  json.url chapter_url(chapter, format: :json)
end
