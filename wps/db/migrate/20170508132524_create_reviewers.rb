class CreateReviewers < ActiveRecord::Migration
  def change
    create_table :reviewers do |t|
      t.string :name
      t.string :review_id
      t.string :email_address
      t.string :article
      t.string :num_review
      t.string :history
      t.string :specialty

      t.timestamps
    end
  end
end
