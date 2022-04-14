json.extract! admin, :id, :fname, :lname, :email, :adminStatus, :created_at, :updated_at
json.url admin_url(admin, format: :json)
