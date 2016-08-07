class CreateRestaurantHours < ActiveRecord::Migration
  def change
    create_table :restaurant_hours do |t|
      t.string :monday
      t.string :tuesday
      t.string :wednesday
      t.string :thursday
      t.string :friday
      t.string :saturday
      t.string :sunday
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
