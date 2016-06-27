#Assignment 5.5 Data Structures

# nested data

theme_park = {
  popular_rides: {
    roller_coaster: "The Dare Devil",
    coaster_ride_info: {
      amount_of_seats: 20,
      wait_time: "30-40 minutes"
    },

    ferris_wheel: "Ol Ye Faithful Wheel",
    ferris_ride_info: {
      amount_of_seats: 30,
      wait_time: "1 Hour"
    },

    bungee_jump: "Leap of Faith",
    bungee_ride_info: {
      amount_of_seats: 1,
      wait_time: "25 mintues"
    }
  },

  food_stands:{
    funnel_cake: ["topped with whipped cream or powdered sugar" => 8.95],
    turkey_leg: ["baked or deep fried" => 9.75],
    pizza: ["baked in a brick oven!" => 5.45],
    ice_cream: ["vanilla, chocolate, strawberry" => 3.50]
  },

  arcade: {
    arcade_info:{
      hours: {
        "Monday-Friday" => "10 a.m. - 9 p.m.",
        "Saturday-Sunday" => "10 a.m. - 11 p.m."
      },
      cost: [
        "a quarter for all the arcade",
        "a dollar for ski ball"
      ]
    },

    tick_booth: {
      admission: {
        "per person" => 27.50,
        "children(5 and under)" => "free",
        "25 tickets" => 27.50,
        "all-day ride pass" => 42.50
      }
    }
  }
}

# driver code

p theme_park[:popular_rides][:coaster_ride_info][:wait_time]
#=> "30-40 minutes"

p theme_park[:food_stands][:funnel_cake][0]["topped with whipped cream or powdered sugar"]
#=> 8.95

p theme_park[:arcade][:arcade_info][:hours]["Monday-Friday"]
#=> "10 a.m. - 9 p.m."
