json.array!(@expenses) do |expense|
  json.extract! expense, :id, :date, :category, :amount, :revenue
  json.url expense_url(expense, format: :json)
end
