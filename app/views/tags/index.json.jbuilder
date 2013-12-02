json.array!(@tags) do |tag|
  json.extract! tag, :title
  json.url tag_url(tag, format: :json)
end
