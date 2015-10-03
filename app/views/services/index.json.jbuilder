json.array!(@services) do |service|
  json.extract! service, :id, :route_id, :payment_type_id, :observation, :client_id, :driver_id, :valuation_id
  json.url service_url(service, format: :json)
end
