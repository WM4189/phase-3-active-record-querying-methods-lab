# Add a console message so we can see output when the seed file runs
puts "Seeding shows..."

# run a loop 50 times
50.times do
  # create a show with random data
  Show.create(
    name: Faker::Show.program_name,
    network: Faker::Show.tv_channel,
    day: Faker::Show.day_of_the_week,
    rating: rand(0..10), # random number between 0 and 60
    season: Faker::Show.season_number
  )
end

puts "Done seeding!"