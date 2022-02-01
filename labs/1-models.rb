# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

# 2. create 1-2 new contacts for each company (they can be made up)
apple = Company.where({name: "Apple, Inc."})[0]
apple_id = apple.id

values = {first_name: "Stiven", last_name: "Vega", email: "vega@apple.com", phone_number: "28", company_id: apple_id}
contact = Contact.new(values)
contact.save

amazon = Company.where({name: "Amazon.com, Inc."})[0]
amazon_id = amazon.id

values = {first_name: "Andres", last_name: "Llinas", email: "llinas@amazon.com", phone_number: "26", company_id: amazon_id}
contact = Contact.new(values)
contact.save

contact = Contact.new
contact.first_name = "Andres"
contact.last_name = "Roman"
contact.email = "roman@amazon.com"
contact.phone_number = "6"
contact.company_id = amazon_id
contact.save

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:
# puts vega.read_attribute(first_name)

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

puts "There are now #{Contact.all.count} contacts."
all_contacts = Contact.all
for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end
