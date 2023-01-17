Freebie.destroy_all
Company.destroy_all
Dev.destroy_all
puts "Creating companies..."
google = Company.create(name: "Google", founding_year: 1998)
facebook = Company.create(name: "Facebook", founding_year: 2004)
dunder_mifflin = Company.create(name: "Dunder Mifflin", founding_year: 2002)
enron = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
rick = Dev.create(name: "Rick")
morty = Dev.create(name: "Morty")
mr_meseeks = Dev.create(name: "Mr. Meseeks")
gazorpazop = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
swag_bag = Freebie.create(item_name: "Swag Bag", value: 10, company_id: google.id, dev_id: gazorpazop.id)
sweatshirt = Freebie.create(item_name: "Sweatshirt", value: 5, company_id: enron.id, dev_id: gazorpazop.id)

puts "Seeding done!"
