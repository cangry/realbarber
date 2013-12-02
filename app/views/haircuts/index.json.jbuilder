json.array!(@haircuts) do |haircut|
  json.extract! haircut, :barber_id, :title, :view_count, :like_count
  json.url haircut_url(haircut, format: :json)
end
