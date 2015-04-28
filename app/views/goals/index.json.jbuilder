json.array!(@goals) do |goal|
  json.extract! goal, :id, :start_date, :end_date, :description
  json.url goal_url(goal, format: :json)
end
