class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :article
      t.string :reviewer
      t.string :date_sent
      t.string :returned
      t.text :contents

      t.timestamps
    end
  end
end
