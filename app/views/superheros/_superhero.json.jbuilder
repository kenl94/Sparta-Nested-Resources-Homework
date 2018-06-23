json.extract! superhero, :id, :name, :age, :state, :created_at, :updated_at
json.url superhero_url(superhero, format: :json)
