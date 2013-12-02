json.array!(@haircut_tags) do |haircut_tag|
  json.extract! haircut_tag, :haircut_id, :tag_id
  json.url haircut_tag_url(haircut_tag, format: :json)
end
