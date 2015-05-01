json.array!(@periods) do |period|
  json.extract! period, :id, :start_time, :end_time, :weekday, :period_title
  json.url period_url(period, format: :json)
end
