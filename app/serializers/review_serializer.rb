class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :total_stars, :text, :person, :date
  belongs_to :person
  # Format the date into MM/DD/YYYY Format
  def date
    date = object.created_at.to_s
    string_date = object.created_at.to_s
                        .slice(0..(date.index(' ')))
                        .delete(' ')
                        .split('-')
                        .reverse
                        .join('/')
    string_date
  end

  def person
    object.person.name || 'Unknown Person'
  end

end
