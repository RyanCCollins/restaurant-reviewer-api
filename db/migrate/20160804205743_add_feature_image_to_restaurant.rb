class AddFeatureImageToRestaurant < ActiveRecord::Migration
  def change
    add_column :restaurants, :feature_image, :string
  end
end
