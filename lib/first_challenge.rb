require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  contacts["Freddy Mercury"].each{|category,info|
    if category == :favorite_icecream_flavors
      info.delete_if {|flavor|
        flavor == "strawberry"
      }
    end
  }


  #remember to return your newly altered contacts hash!
  contacts
end

