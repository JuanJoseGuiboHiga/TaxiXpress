json.array!(@drivers) do |driver|
  json.extract! driver, :id, :name_driver, :address_driver, :telephone_driver, :status_driver, :placa_driver
  json.url driver_url(driver, format: :json)
end
