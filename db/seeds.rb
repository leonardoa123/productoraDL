# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


array_dates = ('01-01-1990'.to_date..'14-07-2022'.to_date).to_a
n_menbers = (1..20).to_a
type_band = ["boys_band", "girl_band", "mix_band", "singer_band"]
30.times do |i|
    Band.create(name: Faker::Music::RockBand.name,
                    date_debut: array_dates.sample,
                    n_menbers: n_menbers.sample,
                    type_band: type_band.sample
    )
end


array_dates = ('01-01-2022'.to_date..'14-07-2022'.to_date).to_a
30.times do |i|
    Event.create(name: "Evento NRO #{i + 1}" , date_event: array_dates.sample )
end

