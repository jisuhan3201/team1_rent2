json.extract! item, :id, :user_id, :name, :category, :sub_category, :image, :created_at, :updated_at
json.url item_url(item, format: :json)
