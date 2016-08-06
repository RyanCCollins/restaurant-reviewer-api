class Review < ActiveRecord::Base
  belongs_to :restaurant
  belongs_to :person
  accepts_nested_attributes_for :person
end
