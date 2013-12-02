json.array!(@haircut_pictures) do |haircut_picture|
  json.extract! haircut_picture, :haircut_id, :url
  json.url haircut_picture_url(haircut_picture, format: :json)
end
