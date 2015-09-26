json.array!(@services) do |service|
  json.extract! service, :id, :address_origin, :address_end, :price, :paymentype, :observation, :client_id, :driver_id, :valuation_id
  json.url service_url(service, format: :json)
end
