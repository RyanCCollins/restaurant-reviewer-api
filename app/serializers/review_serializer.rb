class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :total_stars, :text, :person, :date
  belongs_to :person
  def date
    object.created_at.to_s.slice(0..(date.index(' '))).delete(' ').split('-').reverse.join('/')
  end
  def person
    if object.person && object.person.name
      object.person.name
    end
  end
end
