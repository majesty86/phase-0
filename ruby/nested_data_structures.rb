# My nested data structure will be created based on equipment in a gym teacher's equipment closet.

equipment_closet = {
  shelving_unit: {
    top_shelf: {
      location_name: "top shelf",
      containers: {
        tall_box: [
          "purple badminton paddles",
          "blue badminton paddles",
          "green badminton paddles",
          "shuttlecocks"
          ],
        three_compartment_box: {
          left_compartment: [
            "lime juggling scarves",
            "rose juggling scarves",
            "periwinkle juggling scarves"
            ],
          center_compartment: [
            "juggling balls",
            "hackey sacks"
            ],
          right_compartment: [
            "juggling activities sheet",
            "hackey sack group drills sheet",
            "smiley face stickers"
            ] 
        }
      }
    },
    middle_shelf: {
      location_name: "middle shelf",
      containers: {
        box_1: [
          "single jump ropes",
          "double dutch ropes"
        ],
        box_2: [
          "polyspots",
          "poly arrows"
        ],
        small_bucket: [
          "rubber chickens"
        ]
      },
    },
    floor_under_shelf: {
      location_name: "floor",
      containers: {
        large_bucket: [
          "dodgeballs"
        ]
      },
      no_container: [
        "large scooters",
        "small scooters"
      ]
    }
  },
  steel_ball_rack: {
    bottom_level: [
      "kickballs",
      "soccer balls"
      ],
    middle_level: [
      "game volleyballs",
      "practice volleyballs"
      ],
    top_level: [
      "regulation-size basketballs",
      "mini basketballs"]
  },
  wall_hangers: {
    hanger_1: [
      "green hula hoops",
      "red hula hoops",
      "blue hula hoops",
      "yellow hula hoops"
    ],
    hanger_2: [
      "tug-of-war rope",
      "spare ball bags"
    ]
  }
}



# Locate the rubber chickens on the top shelf of the shelving unit.

puts equipment_closet[:shelving_unit][:middle_shelf][:containers][:small_bucket][0]

# Show me where the lime juggling scarves are.

puts equipment_closet[:shelving_unit][:top_shelf][:containers][:three_compartment_box][:left_compartment][0]

# What's on the floor directly below the shelves on the shelving unit?

equipment_closet[:shelving_unit][:floor_under_shelf][:containers].each do |items|
  puts items
end 

# Are there hula hoops hanging in the closet?

puts equipment_closet[:wall_hangers][:hanger_1].include? "blue hula hoops" 

# How do you store things in the closet?

puts equipment_closet.keys