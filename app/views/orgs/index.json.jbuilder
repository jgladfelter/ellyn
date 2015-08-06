json.array!(@orgs) do |org|
  json.extract! org, :id, :street, :city, :state, :zip, :name, :rating, :phone_number, :contact_name, :email
  json.url org_url(org, format: :json)
end
