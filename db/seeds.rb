# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Embassy.destroy_all
Country.destroy_all
FrenchForeigner.destroy_all
puts "Seed destroyed"

puts "-" * 30
puts "Seed starting :"
puts "-" * 30

@parser = Services::Parser.new()

puts "***** Countries ... *****"
@parser.path = "lib/assets/countries.csv"
country_csv_file = @parser.clean_quote(@parser.read_file)
@parser.parse(country_csv_file, false).each do |country|
    Country.create(
        code: country[1],
        iso_2: country[2],
        iso_3: country[3],
        name_fr: country[4],
        name_en: country[5]
    )    
end
puts "... done"

puts "***** Embassy ... *****"
@parser.path = "lib/assets/embassy.csv"
embassy_csv_file = @parser.invert_semicolon_and_comma(@parser.read_file)
@parser.parse(embassy_csv_file, true).each do |embassy|
    Embassy.create(
        type_of_embassy: embassy[0],
        country: embassy[1],
        latitude: embassy[2],
        longitude: embassy[3],
        coordinates: embassy[4]
    )    
end
puts "... done"

puts "***** FrenchForeigners ... *****"
@parser.path = "lib/assets/french-foreigners.csv"
french_foreigner_csv_file = @parser.invert_semicolon_and_comma(@parser.read_file)
@parser.parse(french_foreigner_csv_file, true).each do |french_foreigner|
    FrenchForeigner.create(
        country: french_foreigner[0],
        year: french_foreigner[1],
        nbr_french: french_foreigner[2]
    )
end
puts "... done"
