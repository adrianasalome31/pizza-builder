json.extract! ingrediente, :id, :nombre, :precio, :created_at, :updated_at
json.url ingrediente_url(ingrediente, format: :json)
