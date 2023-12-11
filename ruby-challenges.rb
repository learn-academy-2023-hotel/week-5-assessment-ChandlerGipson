# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

# us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# # Pseudo code:
# 1.input: created a method named states with a paramiter named data
# 2.variable states_sorted is equal to flatten method 
# 3.variable all_states is equal to states_sorted
# 4.print results of states function

def states (data)
    states_sorted = data.values.flatten.sort { |a, b| a <=> b }
    all_states = states_sorted
end
puts states(us_states)


# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# # Pseudo code:
# 1.created class named bik that intialozed model,wheels, current_speed
# 2.in intialized gave paramiters of  wheels = 2 and cuurent_speed = 0
# 3.created second def bik_info with a string and string interpulation creating a sentence with bike info
# 4.created a new instance of the bike class printed results of bike_info

class Bike 
    def initialize(model, wheels = 2, current_speed = 0)
        @model = model
        @wheels = wheels
        @current_speed = current_speed
    end

   def bike_info
      "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph."
    end
    # end
    # the_bike = Bike.new('Trek', 2, 10)
    # puts the_bike.bike_info

    # -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

    # Expected output example: my_bike.pedal_faster(10) => 10
    # Expected output example: my_bike.pedal_faster(18) => 28
    # Expected output example: my_bike.brake(5) => 23
    # Expected output example: my_bike.brake(25) => 0

    # Pseudo code:1.
    # 1.The pedal_faster method increases the speed by the given amount. and second to brake bike
    # 2.current_speed += to increase the the bike speed
    # 3.the brake method decrease by subtracting amount from current_speed but not letting it go negative by adding 0
    # 4.created new instance for the bike class and printed results for allexpected outputs
    def pedal_faster(increase)
      @current_speed += increase.to_i
      "Pedaled faster by #{increase}"
    end

    def brake(decrease)
      @current_speed = [@current_speed - decrease.to_i, 0].max
      "Push brake by #{decrease}. Current speed is now #{@current_speed}"
    end
end

  the_bike = Bike.new('MyBike')
  puts the_bike.bike_info
  puts the_bike.pedal_faster(10)  
  puts the_bike.pedal_faster(18)  
  puts the_bike.brake(5)       
  puts the_bike.brake(25)         