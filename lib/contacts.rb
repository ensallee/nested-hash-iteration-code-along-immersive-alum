require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
  contacts.each do |contact, contact_details_hash|
    if contact == "Freddy Mercury"
      contact_details_hash[:favorite_ice_cream_flavors].each do |flavor|
        contact_details_hash[:favorite_ice_cream_flavors].delete_if {|flavor| flavor == "strawberry"}
      end
    end
  end
end
