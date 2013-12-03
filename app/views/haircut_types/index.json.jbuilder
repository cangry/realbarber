json.array!(@haircut_types) do |haircut_type|
  json.extract! haircut_type, :title
  json.url haircut_type_url(haircut_type, format: :json)
end
