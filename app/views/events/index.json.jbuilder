json.array!(@events) do |event|
  json.extract! event, :id, :activity_id, :age_min, :age_max, :start_date, :end_date, :start_time, :end_time, :price
  json.url event_url(event, format: :json)
end
