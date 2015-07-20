json.array!(@items) do |item|
  json.extract! item, :id, :itemname, :description, :address, :latitude, :longitude
  json.url item_url(item, format: :json)
end
