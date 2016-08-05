class Restaurant < ActiveRecord::Base
  has_many :reviews
  belongs_to :restaurant_type
  alias_attribute :type, :restaurant_type
  alias_attribute :city, :town
  alias_attribute :image, :feature_image
end
