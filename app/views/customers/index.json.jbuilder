json.array!(@customers) do |customer|
  json.extract! customer, :user_id, :zip
  json.url customer_url(customer, format: :json)
end
