class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :author
      t.text :content
      t.integer :rating
      t.references :unicorn, foreign_key: true

      t.timestamps
    end
  end
end
