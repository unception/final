class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :author
      t.string :other_authors
      t.string :reviewer
      t.string :review
      t.text :contents
      t.string :category
      t.string :accepted
      t.string :copyright
      t.string :published

      t.timestamps
    end
  end
end
