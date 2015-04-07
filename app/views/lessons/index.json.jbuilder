json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :lesson_title, :lesson_description, :lesson_start_date, :lesson_end_date, :attachment, :chapter_id
  json.url lesson_url(lesson, format: :json)
end
