json.array!(@routes) do |route|
  json.extract! route, :id, :description, :origin, :end, :price
  json.url route_url(route, format: :json)
end
