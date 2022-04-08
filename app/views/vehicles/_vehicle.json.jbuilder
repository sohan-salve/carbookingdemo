json.extract! vehicle, :id, :model, :color, :fuel_type, :price, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
