json.extract! reviewer, :id, :name, :review_id, :email_address, :article, :num_review, :history, :specialty, :created_at, :updated_at
json.url reviewer_url(reviewer, format: :json)
