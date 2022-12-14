# puts "Event Manager Initialized!"

# lines = File.readlines('event_attendees.csv')

# lines.each_with_index do |line, index| 
#   next if index==0
#   columns = line.split(",")
#   names = columns[2]
#   puts names
# end


require 'csv'
puts 'EventManager initialized'

contents = CSV.open(
  'event_attendees.csv',
   headers: true, 
   header_converters: :symbol
  )

contents.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  puts "#{name} #{zipcode}"
end