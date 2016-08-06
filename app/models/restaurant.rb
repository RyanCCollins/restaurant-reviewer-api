class Restaurant < ActiveRecord::Base
  has_many :reviews
  belongs_to :restaurant_type
  alias_attribute :type, :restaurant_type
  alias_attribute :city, :town
  alias_attribute :image, :feature_image
  def average_rating
    review_array = reviews.map(&:total_stars)
    rating = review_array.inject(0.0) { |a, e| a + e } / review_array.size
    rating.to_i || 0
  end
end
