json.array!(@clients) do |client|
  json.extract! client, :id, :no_client, :telephone
  json.url client_url(client, format: :json)
end
