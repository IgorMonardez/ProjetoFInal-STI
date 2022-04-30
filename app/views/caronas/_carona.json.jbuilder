json.extract! carona, :id, :departure, :arrival, :price, :passengers, :date, :hour, :comments, :created_at, :updated_at
json.url carona_url(carona, format: :json)
