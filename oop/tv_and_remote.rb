# In this exercise, you will be creating two classes AND the driver code to test them.
# You will create a Tv class and a Remote class. 

# The Tv class will have the attributes: power, volume, and channel. 

# The Remote class will have just one attribute: tv. This will represent which tv it
# actually controls.
# The Remote will have the following instance methods: 
# toggle_power (this will turn off the tv if it's on, or turn it on if it's off)
# increment_volume (this will increase the tv's volume by 1)
# decrement_volume (this will decrease the tv's volume by 1)
# set_channel (this will change the tv's channel to whatever integer is passed to this method)

class TV
  attr_accessor :power, :volume, :channel
  def initialize(tv_hash)
    @power = tv_hash[:power]
    @volume = tv_hash[:volume]
    @channel = tv_hash[:channel]
  end
end

class Remote
  attr_reader :tv

  def toggle_power
    power = !power
    puts power
  end

  def increment_volume
    @volume.to_i + 1
  end

  def decrement_volume
    @volume - 1
  end

  def set_channel(channel_number)
    @channel = channel_number
  end
end

# Driver code below...

puts "TESTING TV and Remote..."

tv = TV.new({power: true, volume: 25, channel: 37})
remote = Remote.new

puts remote.toggle_power









