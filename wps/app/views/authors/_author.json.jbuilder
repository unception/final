json.extract! author, :id, :name, :email_address, :article, :created_at, :updated_at
json.url author_url(author, format: :json)
