class Restaurant < ActiveRecord::Base
  has_many :review
  belongs_to :restaurant_type
  alias_attribute :type, :restaurant_type
end
