# movies that organizes by genre
# recipes with ingredients
# user profiles: list of favorite colors, 3 personal essays (essay_1, essay_2, essay_3)

moveies = {
  "Action" => ["Skyfall", "Mission:Impossible", "The Dark Knight", "Die Hard"],
  "Adventure" => ["Indiana Jones", "Homeward Bound", ""],
  "Romantic Comedy" => ["50 First Dates"],
  "Drama" => ["Steel Magnolias", "Citizen Kane", "Train Spotting", "Flash"],
  "Comedy" => ["In Bruges", "Anchorman", "40 Year Old Virgin"],
  "Horror" => ["The Shining", "The Ring", "Texas Chainsaw Massacre", "Hostel"],
  "Crime" => ["The Godfather"],
  "Thriller" => ["Se7en", "Minority Report", "Memento"]
}

recipes = {
  "Cookies" => [
    { "Sugar" => "1/2 cup" },
    { "Chocolate Chips" => "1 bag" },
    { "Flour" => "2 cups" },
    { "Eggs" => "2"},
    { "Vanilla Extract" => "1/4 teaspoon" }
  ],
  "Jerk Turkey Burgers" => [
    { "Ground Turkey" => "1/2 pound" },
    { "Allspice" => "1/8 teaspoon" },
    { "Cumin" => "1/8 teaspoon" },
    { "Cloves" => "1/8 teaspoon" },
    { "Cayenne" => "1/8 teaspoon" },
    { "Black Pepper" => "1 teaspoon" },
    { "Salt" => "1/2 teaspoon" },
    { "Olive Oil" => "1/8 cup"}
  ]
}

profiles = [
  { 
    :username => "tiffalopolis",
    :colors   => ["red", "yellow", "green"],
    :essays   => ["essay_1", "essay_2", "essay_3"]
  },
  {
    :username => "mattypants",
    :colors   => ["blue", "white", "grey"],
    :essays   => ["essay_1", "essay_2", "essay_3"]
  },
  {
    :username => "manufresh",
    :colors   => ["orange", "black", "emerald"],
    :essays   => ["essay_1", "essay_2", "essay_3"]
  }
]