json.array!(@barbers) do |barber|
  json.extract! barber, :name, :bio, :address1, :address2, :zip, :city, :state, :country, :avatar_url, :status
  json.url barber_url(barber, format: :json)
end
