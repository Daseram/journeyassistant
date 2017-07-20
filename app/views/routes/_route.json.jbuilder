json.extract! route, :id, :name, :vehicle_id, :passenger_id, :initial_point, :final_point, :created_at, :updated_at
json.url route_url(route, format: :json)
