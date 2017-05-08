json.extract! review, :id, :article, :reviewer, :date_sent, :returned, :contents, :created_at, :updated_at
json.url review_url(review, format: :json)
