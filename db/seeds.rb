# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
RestaurantType.create([
  {
    name: 'American'
  },
  {
    name: 'Burgers'
  },
  {
    name: 'Cafe'
  },
  {
    name: 'Other'
  },
  {
    name: 'Farmers Market'
  },
  {
    name: 'Barbeque'
  }
])

types = RestaurantType.all

Restaurant.create([
  {
    name: 'The New Magnum Café',
    address: 'Jalan M Husni Thamrin 1',
    type: types.where(name: 'Cafe').first,
    town: 'Jakarta Pusat',
    state: 'Daerah Khusus Ibukota Jakarta',
    zip: '',
    country: 'id',
    phone: '(021) 23580055',
    website: 'http://mymagnum.co.id/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/magnum.jpg?raw=true'
  },
  {
    name: 'Anne Frank Huis',
    address: 'Prinsengracht 267',
    type: types.where(name: 'Cafe').first,
    town: 'Amsterdam',
    state: 'Noord-Holland',
    zip: '1016 GV',
    country: 'nl',
    phone: '020 556 7105',
    website: 'http://www.annefrank.org/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/annefrank.jpg?raw=true'
  },
  {
    name: 'Hopdoddy Burger Bar',
    address: '1400 S Congress Ave',
    type: types.where(name: 'Burgers').first,
    town: 'Austin',
    state: 'TX',
    zip: '78704',
    country: 'US',
    phone: '(512) 243-7505',
    website: 'http://www.hopdoddy.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/hopdoddy.jpg?raw=true'
  },
  {
    name: 'Skylon Tower',
    address: '5200 Robinson St',
    type: types.where(name: 'Cafe').first,
    town: 'Niagara Falls',
    state: 'ON',
    zip: 'L2G2A2',
    country: 'CA',
    phone: '(905) 356-2651',
    website: 'http://www.skylon.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/skylon.jpg?raw=true'
  },
  {
    name: 'Dinosaur Bar-B-Que',
    address: '246 W Willow St',
    type: types.where(name: 'Barbeque').first,
    town: 'Syracuse',
    state: 'NY',
    zip: '13202',
    country: 'US',
    phone: '(315) 476-4937',
    website: 'http://www.dinosaurbarbque.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/dinosaur.jpg?raw=true'
  },
  {
    name: 'Shady Maple Smorgasbord',
    address: '129 Toddy Dr',
    type: types.where(name: 'Farmers Market').first,
    town: 'East Earl',
    state: 'PA',
    zip: '17519',
    country: 'US',
    phone: '(717) 354-8222',
    website: 'http://www.shady-maple.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/shadymaple.jpg?raw=true'
  },
  {
    name: 'The Ledbury',
    address: '127 Ledbury Rd',
    type: types.where(name: 'Other').first,
    town: 'Notting Hill',
    state: 'London',
    zip: 'W11 2AQ',
    country: 'GB',
    phone: '020 7792 9090',
    website: 'http://www.theledbury.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/ledbury.jpg?raw=true'
  },
  {
    name: 'Hill Country',
    address: '30 W 26th St',
    type: types.where(name: 'Other').first,
    town: 'New York',
    state: 'NY',
    zip: '10010',
    country: 'US',
    phone: '(212) 255-4544',
    website: 'http://www.hillcountryny.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/hill-country.jpg?raw=true'
  },
  {
    name: 'Founding Farmers',
    address: '1924 Pennsylvania Ave NW',
    type: types.where(name: 'Other').first,
    town: 'Washington',
    state: 'DC',
    zip: '20006',
    country: 'US',
    phone: '(202) 822-8783',
    website: 'http://www.wearefoundingfarmers.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/foundingfarmers.jpg?raw=true'
  },
  {
    name: 'Andina',
    address: '1314 NW Glisan St',
    type: types.where(name: 'Other').first,
    town: 'Portland',
    state: 'OR',
    zip: '97209',
    country: 'OR',
    phone: '(503) 228-9535',
    website: 'http://www.andinarestaurant.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/andina.png?raw=true'
  },
  {
    name: 'Brooklyn Bowl',
    address: '61 Wythe Ave',
    type: types.where(name: 'Cafe').first,
    town: 'Brooklyn',
    state: 'NY',
    zip: '11249',
    country: 'US',
    phone: '(718) 963-3369',
    website: 'http://www.brooklynbowl.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/brooklyn.jpg?raw=true'
  },
  {
    name: 'Bouchon',
    address: '3355 Las Vegas Blvd S',
    type: types.where(name: 'Other').first,
    town: 'Las Vegas',
    state: 'NV',
    zip: '89109',
    country: 'US',
    phone: '(702) 414-6200',
    website: 'http://www.thomaskeller.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/bouchon.jpg?raw=true'
  },
  {
    name: 'Sneaky Dee\'s',
    address: '431 College St W',
    type: types.where(name: 'Cafe').first,
    town: 'Toronto',
    state: 'ON',
    zip: 'M5T 1T1',
    country: 'CA',
    phone: '(416) 603-3090',
    website: 'http://sneaky-dees.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/sneakydees.jpg?raw=true'
  },
  {
    name: 'The Spot',
    address: '3204 Seawall Blvd',
    type: types.where(name: 'Other').first,
    town: 'Galveston',
    state: 'TX',
    zip: '77550',
    country: 'US',
    phone: '(409) 621-5237',
    website: 'http://www.islandfamous.com/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/spot.jpg?raw=true'
  },
  {
    name: 'Earl of Sandwich',
    address: '3667 Las Vegas Blvd S',
    type: types.where(name: 'Cafe').first,
    town: 'Las Vegas',
    state: 'NV',
    zip: '89109',
    country: 'US',
    phone: '(702) 463-0259',
    website: 'http://www.earlofsandwichusa.com/nevada/downtown-summerlin/',
    feature_image: 'https://github.com/RyanCCollins/cdn/blob/master/restaurant-reviewer/restaurants/earlofsandwich.jpg?raw=true'
  }
])

Person.create([
  {
    name: 'Ryan Collins'
  },
  {
    name: FFaker::Name.name
  },
  {
    name: FFaker::Name.name
  }
])

people = Person.all
restaurants = Restaurant.all
hours_from = [
  '9:00',
  '10:00',
  '11:00',
  '12:00'
]
hours_to = [
  '20:00',
  '21:00',
  '22:00',
  '23:00'
]

restaurants.each do |r|
  10.times do
    r.reviews << Review.create({
      total_stars: (1..5).to_a.sample,
      text: FFaker::CheesyLingo.sentence,
      person: people.sample
    })
  end

  weekday_hours = "#{hours_from.sample} - #{hour_to.sample}"
  weekend_hours = "#{hours_from.sample} - #{hour_to.sample}"

  r.review.hours = RestaurantHour.create({
    monday: weekday_hours,
    tuesday: weekday_hours,
    wednesday: weekday_hours,
    thursday: weekday_hours,
    friday: weekday_hours,
    saturday: weekend_hours,
    sunday: weekend_hours
  })
end
