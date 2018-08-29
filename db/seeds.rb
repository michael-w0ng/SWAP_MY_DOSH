Offer.destroy_all
Request.destroy_all
Message.destroy_all
User.destroy_all
Review.destroy_all




50.times do |i|
  puts "Creating User ##{i}"
  User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: "123456",
  remote_photo_url: UiFaces.face,
  description: Faker::HarryPotter.quote
  )
end


puts "user created!"

locations_array = [["Tirana, Albania"], ["Vienna, Austria"], ["Minsk, Belarus"], ["Brussels, Belgium"], ["Sofia, Bulgaria"], ["Zagreb, Croatia"], ["Nicosia, Cyprus"], ["Prague, Czech Republic"], ["Copenhagen, Denmark"], ["Tallinn, Estonia"], ["Tórshavn, Faroe Islands"], ["Helsinki, Finland"], ["Paris, France"], ["Berlin, Germany"], ["Athens, Greece"], ["Budapest, Hungary"], ["Reykjavik, Iceland"], ["Dublin, Ireland"], ["Rome, Italy"], ["Saint Helier, Jersey"], ["Riga, Latvia"], ["Vaduz, Liechtenstein"], ["Vilnius, Lithuania"], ["Luxembourg, Luxembourg"], ["Skopje, Macedonia"], ["Valletta, Malta"], ["Chișinău, Moldova"], ["Monaco, Monaco"], ["Podgorica, Montenegro"], ["Amsterdam, Netherlands"], ["Oslo, Norway"], ["Warsaw, Poland"], ["Lisbon, Portugal"], ["Bucharest, Romania"], ["Moscow, Russia"], ["Belgrade, Serbia"], ["Bratislava, Slovakia"], ["Ljubljana, Slovenia"], ["Madrid, Spain"], ["Stockholm, Sweden"], ["Bern, Switzerland"], ["Kiev, Ukraine"], ["London, United Kingdom"]]

50.times do |i|
  puts "Creating request ##{i}"
  Request.create!(
  request_currency: Faker::Currency.code,
  wanted_currency: "EUR",
  request_amount: Faker::Number.number(3),
  location: locations_array.sample[0],
  start_date: Faker::Date.forward(100),
  end_date: Faker::Date.forward(100),
  status: "pending",
  user: User.all.sample
  )
end



puts "requests created!"





300.times do |i|
  puts "Creating reviews ##{i}"
  Review.create!(
  content: Faker::RickAndMorty.quote,
  rating: rand(1..5),
  user: User.all.sample,
  request: Request.all.sample
  )
end



puts "reviews created!"
