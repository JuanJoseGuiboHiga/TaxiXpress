json.array!(@valuations) do |valuation|
  json.extract! valuation, :id, :description_valuation
  json.url valuation_url(valuation, format: :json)
end
