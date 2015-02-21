json.array!(@teams) do |team|
  json.extract! team, :id, :name, :wins, :losses, :points, :nrr
  json.url team_url(team, format: :json)
end
