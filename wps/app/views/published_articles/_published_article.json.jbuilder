json.extract! published_article, :id, :name, :author, :abstract, :contents, :category, :created_at, :updated_at
json.url published_article_url(published_article, format: :json)
