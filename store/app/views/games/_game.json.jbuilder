json.extract! game, :id, :name, :price, :plataform, :description, :created_at, :updated_at
json.url game_url(game, format: :json)
