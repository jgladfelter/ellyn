json.array!(@activities) do |activity|
  json.extract! activity, :id, :org_id, :name
  json.url activity_url(activity, format: :json)
end
