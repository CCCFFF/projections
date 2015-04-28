json.array!(@revenues) do |revenue|
  json.extract! revenue, :id, :category, :date, :amount
  json.url revenue_url(revenue, format: :json)
end
