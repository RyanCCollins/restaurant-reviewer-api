class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :total_stars
      t.string :text
      t.references :restaurant, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
