class FixRestaurantTypeType < ActiveRecord::Migration
  def change
    rename_column :restaurant_types, :type, :name
  end
end
