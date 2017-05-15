class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.string :title
      t.string :genre
      t.string :link

      t.timestamps
    end
  end
end
