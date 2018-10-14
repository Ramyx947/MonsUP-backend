
User.destroy_all
Trip.destroy_all
PhysicalRating.destroy_all
Day.destroy_all
Accommodation.destroy_all
# Users
users = [
  {username: "Emily", email: "emily@yahoo.com", admin: false},
  {username: "Ramona", email: "ramona@yahoo.com", admin: true},
  {username: "Greg", email: "greg@yahoo.com", admin: false}
]
users.each{|user_data| User.create(user_data)}

# Trips
# Trips
trips = [
  {title: "Inca Trail - my long awaited holiday",
    start_date: "28/10/2018",
    end_date: "2/11/2018",
    number_days: 6,
    country: "Peru",
    city: "Cusco",
    category: "trekking",
    user: User.find_by(username: "Ramona")},
  {title: "Everest Base Camp",
    start_date: "10/10/2018",
    end_date: "20/10/2018",
    number_days: 10,
    country: "Nepal",
    city: "Kathmandu",
    category: "hiking",
    user: User.find_by(username: "Ramona")},
  {title: "Kili adventure",
    start_date: "07/01/2019",
    end_date: "13/01/2019",
    number_days: 7,
    country: "Tanzanian",
    city: "MOSHI",
    category: "hiking",
    user: User.find_by(username: "Ramona")},
  {title: "New Zealand holiday",
    start_date: "14/01/2019",
    end_date: "20/01/2019",
    number_days: 7 ,
    country: "New Zealand",
    city: "Queenstown",
    category: "hiking",
    user: User.find_by(username: "Greg")},
  {title: "Ben Nevis and Glencoe trip ",
    start_date: "20/10/2018",
    end_date: "25/10/2018",
    number_days: 6 ,
    country: "UK",
    city: "Glasgow",
    category: "hiking",
    user: User.find_by(username: "Emily")},
  {title: "Carpathian Mountains Trip",
  start_date: "10/07/2018",
  end_date: "11/07/2018",
  number_days: 2,
  country: "Romania",
  city: "Brasov",
  category: "hiking",
  user: User.find_by(username: "Ramona")}
]
trips.each{|trip_data| Trip.create(trip_data)}

#Physical Rating
physical_ratings = [
  {difficulty: "demanding", trip:Trip.find_by(id: 1)},
  {difficulty: "challenging", trip:Trip.find_by(id: 2)},
  {difficulty: "demanding", trip:Trip.find_by(id: 3)},
  {difficulty: "average", trip:Trip.find_by(id: 4)},
  {difficulty: "average", trip:Trip.find_by(id: 5)},
  {difficulty: "average", trip:Trip.find_by(id: 6)}
]
physical_ratings.each{|pr_data| PhysicalRating.create(pr_data)}


# Days
days = [
  # Peru 5
  { title: "Day 1: Arrive in Lima ", start_point: "London", end_point: "Lima", distance: 0,
    notes: "Catch flight from London. Met the rest of the group at the airport and transferred to the hotel. Wander around Miraflores, the area of Lima where the hotel is located.",
    trip: Trip.find_by(id: 1)},
  { title: "Day 2: Cusco ", start_point: "Lima", end_point: "Cusco", distance: 0,
    notes: "",
    trip: Trip.find_by(id: 1 )},
  { title: "Day 3: Sacred Valey ", start_point: "Cusco", end_point: "Ollantaytambo", distance: 0,
    notes: "",
    trip: Trip.find_by(id: 1 )},
  { title: "Day 4: Trek over Winay Wayna ", start_point: "Ollantaytambo", end_point: "Inti Punku", distance: 0,
    notes: "",
    trip: Trip.find_by(id: 1)},
  { title: "Day 5: Trek to Machu Picchu ", start_point: "Inti Punku ", end_point: "Aguas Calientes", distance: 0,
    notes: "",
    trip: Trip.find_by(id: 1)},
# EBC 3
  { title: "Day 1: Kathmandu",
      start_point: "London", end_point: "Moshi", distance: 0,
      notes: "Catch flight from London. Met the rest of the group at the airport and transferred to the hotel. Wander around Miraflores, the area of Lima where the hotel is located.",
      trip: Trip.find_by(id: 2 )},
  { title: "Day 2: Phakding ", start_point: "Kathmandu", end_point: "Lukla", distance: 5 ,
      notes: "relaxed walk",
     trip: Trip.find_by(id: 2 )},
  { title: "Day 3: Namche Bazaar ", start_point: "Lukla", end_point: "Namche Bazaar", distance: 16,
    notes: "Today you’ll trek around 7 hours to Namche Bazaar, where you’ll spend a couple of days acclimatising to the altitude. From Phakding you’ll cross the river and head up the valley, following in the footsteps of the porters loaded with supplies for Namche Bazaar. The trail, lined with blue pine forest, follows the river valley and is especially spectacular in spring when the rhododendron flowers are bright in bloom. ",
    trip: Trip.find_by(id: 2 )},
# Killi 3
  { title: "Day 1: Arrive in MOSHI ", start_point: "MOSHI", end_point: "", distance: 0,
    notes: "",
    trip: Trip.find_by(id: 3)},
  { title: "Day 2: Machame camp" , start_point: "MOSHI", end_point: "Machame camp", distance: 10,
    notes: "", 
    trip: Trip.find_by(id: "Kili adventure")},
  { title: "Day 3: Shira 2 Camp", start_point: "Machame camp", end_point: "Shira 2 Camp", distance:25,
    notes: "",
    trip: Trip.find_by(id: 3 )},

# NZ 3
  { title: "Day 1: Arrive in Queenstown ", start_point: "London", end_point: "Queenstown", distance: 0,
    notes: "",
    trip: Trip.find_by(id: 4)},
  { title: "Day 2: around Queenstown ", start_point: "Queenstown", end_point: "don't know yet", distance: 10,
    notes: "",
    trip: Trip.find_by(id: 4 )},
  { title: "Day 3:  ", start_point: "", end_point: "", distance: 0,
    notes: "",
    trip: Trip.find_by(id: 4 )},

# Ben Nevis 3
  { title: "Day 1: London - Glasgow-Oban ", start_point: "London", end_point: "Oban", distance: 0,
    notes: "",
    trip: Trip.find_by(id: 5)},
  { title: "Day 2: Ben Nevis", start_point: "Lima", end_point: "", distance: 10,
    notes: "sunny day",
    trip: Trip.find_by(id: 5 )},
   { title: "Day 3: Glencoe", start_point: "Glencoe", end_point: "", distance: 6,
    notes: "check weather, possible storm",
    trip: Trip.find_by(id: 5 )},

# Brasov 1
  { title: "Day 1:Around Brasov ", start_point: "London", end_point: "Brasov", distance: 0,
    notes: "catch flight from Luton, find a hotel, plan routes according to the weather. 5 centre-based day walks - decide which one I will go on first",
    trip: Trip.find_by(id: 6 )},
]
days.each{|day_data| Day.create(day_data)}


# Accommodation
accommodations = [
# Peru
  {accommodation_type: "hotel", name: "Relic", address: "Lima", day: Day.find_by(title: "Day 1: Arrive in Lima ")},
  {accommodation_type: "B&B", name: "Dono Cusco", address: "Cusco", day: Day.find_by(title: "Day 2: Cusco ")},
  {accommodation_type: "B&B", name: "Ollantaytambo", address: "Ollantaytambo", day: Day.find_by(title: "Day 3: Sacred Valey ")},
  {accommodation_type: "hotel", name: "Punku", address: "Inti Punku", day: Day.find_by(title: "Day 4: Trek over Winay Wayna ")},
  {accommodation_type: "hotel", name: "Calientes", address: "Aguas Calientes", day: Day.find_by(title: "Day 5: Trek to Machu Picchu ")}, 

   
# EBC
  {accommodation_type: "hotel", name: "Machu Pichu", address: "Moshi", day: Day.find_by(title: "Day 1: Kathmandu")},
  {accommodation_type: "B&B", name: "Lukla namaste", address: "Lukla", day: Day.find_by(title: "Day 2: Phakding ")},
  {accommodation_type: "hostel", name: "Namche Log", address: "Namche Bazaar", day: Day.find_by(title: "Day 3: Namche Bazaar ")},

# Kili
  {accommodation_type: "hotel", name: "Laga laga Hostel", address: "Moshi", day: Day.find_by(title: "Day 1: Arrive in MOSHI ")},
  {accommodation_type: "hotel", name: "Marangu Hotel", address: "Marangu", day: Day.find_by(title: "Day 2: Machame camp")},
  {accommodation_type: "campsite", name: "Shira 2 Camp", address: "Shira", day: Day.find_by(title: "Day 3: Shira 2 Camp")},

# NZ

# Ben Nevis
  {accommodation_type: "hostel", name: "Oban Hostel", address: "Oban", day: Day.find_by(title: "Day 1: London - Glasgow-Oban ")},
  {accommodation_type: "hostel", name: "Oban Hostel", address: "Oban", day: Day.find_by(title: "Day 2: Ben Nevis")},
  {accommodation_type: "hostel", name: "Oban Hostel", address: "Oban", day: Day.find_by(title: "Day 3: Glencoe")},
# Brasov
]
accommodations.each{|acc_da| Accommodation.create(acc_da)}





