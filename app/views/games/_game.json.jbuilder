json.extract! game, :id, :winner, :loser, :w_score, :l_score, :date, :created_at, :updated_at
json.url game_url(game, format: :json)
