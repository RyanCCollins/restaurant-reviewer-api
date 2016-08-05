class RestaurantsSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :city, :state, :zip,
                                   :country, :phone, :website, :type, :image
  has_many :reviews
end
