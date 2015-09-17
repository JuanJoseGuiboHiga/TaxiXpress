json.array!(@users) do |user|
  json.extract! user, :id, :usuario, :celular, :correo, :contraseña
  json.url user_url(user, format: :json)
end
