class CreatePublishedArticles < ActiveRecord::Migration
  def change
    create_table :published_articles do |t|
      t.string :name
      t.string :author
      t.string :abstract
      t.text :contents
      t.string :category

      t.timestamps
    end
  end
end
