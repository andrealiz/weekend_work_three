# In this exercise, we've already implemented the class, and you have to write the 
# driver code. 
# This class represents a hotel reservation.

class HotelReservation
  attr_accessor :customer_name, :date, :room_number, :amenities

  def initialize(reservation_info)
    @customer_name = reservation_info[:customer_name]
    @date = reservation_info[:date]
    @room_number = reservation_info[:room_number]
    @amenities = []
  end

  def add_a_fridge
    @amenities << "fridge"
  end

  def add_a_crib
    @amenities << "crib"
  end

  def add_a_custom_amenity(amenity)
    @amenities << amenity
  end

end


# Write your own driver code below! Make sure your code tests the following:
# The ability to change a room number even after a reservation has already been created
# Then add_a_fridge method
# Then add_a_crib method
# Then add_a_custom_amenity method

puts "TESTING HotelReservation..."
puts

hotel_reservation = HotelReservation.new({customer_name: "Drea", date: "1-1-01", room_number: 5, amenities: "Pool and spa"})

result = hotel_reservation.room_number

puts "You changed your room number from:"
puts result
puts "to:"
puts result = 10

if result != 5
  puts "PASS!"
else
  puts "F"
end
puts

result = hotel_reservation.add_a_fridge

puts "You added an amenity:"
puts result
puts

if result = "fridge"
  puts "PASS!"
else
  puts "F"
end
puts

result = hotel_reservation.add_a_crib

puts "You added a second amenity"
puts result
puts

if result = "crib"
  puts "PASS!"
else
  puts "F"
end
puts

result = hotel_reservation.add_a_custom_amenity("hot tub")

puts "You added a new amenity:"
puts result
puts

if result = true
  puts "PASS!"
else
  puts "F"
end