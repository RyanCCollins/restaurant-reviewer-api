class AddAddressToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :address, :string
    add_column :restaurants, :town, :string
    add_column :restaurants, :state, :string
    add_column :restaurants, :zip, :string
    add_column :restaurants, :country, :string
  end
end
