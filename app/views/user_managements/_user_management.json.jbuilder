json.extract! user_management, :id, :name, :email, :password, :created_at, :updated_at
json.url user_management_url(user_management, format: :json)
