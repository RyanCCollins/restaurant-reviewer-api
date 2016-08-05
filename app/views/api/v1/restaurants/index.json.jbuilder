json.restaurants do
  json.array! @restaurants do |restaurant|
    json.id restaurant.id
    json.name restaurant.name
    json.address restaurant.address
    json.state restaurant.town
    json.state restaurant.state
    json.zip restaurant.zip
    json.country restaurant.country
    json.phone restaurant.phone
    json.website restaurant.website
    json.image restaurant.feature_image
    json.type do
      
    end
  end
end
