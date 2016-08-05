class ReviewsSerializer < ActiveModel::Serializer
  attributes :id, :total_stars, :text, :person
  belongs_to :restaurant
  belongs_to :person
  def person
    object.person.name
  end
end
