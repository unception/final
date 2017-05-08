json.extract! article, :id, :name, :author, :other_authors, :reviewer, :review, :contents, :category, :accepted, :copyright, :published, :created_at, :updated_at
json.url article_url(article, format: :json)
