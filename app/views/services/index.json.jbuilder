json.array!(@services) do |service|
  json.extract! service, :id, :address_origin, :address_end, :price, :paymentype, :calification, :observation, :client_id, :driver_id
  json.url service_url(service, format: :json)
end
