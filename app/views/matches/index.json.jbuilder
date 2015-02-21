json.array!(@matches) do |match|
  json.extract! match, :id, :team1_id, :team2_id, :team1_total, :team2_total, :team1_wickets, :team2_wickets, :team1_overs, :team2_overs, :winner, :tie
  json.url match_url(match, format: :json)
end
