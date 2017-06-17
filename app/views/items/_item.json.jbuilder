json.extract! item, :id, :name, :price, :stock, :note, :created_at, :updated_at
json.url item_url(item, format: :json)
