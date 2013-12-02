json.array!(@haircut_photos) do |haircut_photo|
  json.extract! haircut_photo, :haircut_id, :is_default
  json.url haircut_photo_url(haircut_photo, format: :json)
end
