json.array!(@barber_types) do |barber_type|
  json.extract! barber_type, :barber_id, :type_id
  json.url barber_type_url(barber_type, format: :json)
end
