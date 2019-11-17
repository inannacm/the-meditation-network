

# puts "Destroying users"
# User.destroy_all
# user1 = User.create(first_name: "Inanna", last_name: "Craig-Morse", email: "fake@fake.com", password: "123123")
# puts "Created users"

#starts id 7
# User.create(first_name: "Khiran", last_name: "O'neill", email: "fake@fake.com", password: "123123")
# User.create(first_name: "Caroline", last_name: "Medina", email: "faker@fake.com", password: "234234")
# User.create(first_name: "Patrick", last_name: "Ronk", email: "fakers@fake.com", password: "345345")
# User.create(first_name: "Mira", last_name: "Craig-Morse", email: "fakerest@fake.com", password: "456456")

# puts "Created users"

puts "Destroying groups"
Group.destroy_all
Group.create(user_id: 6, city: "London", style: "Vipassana", address: "448 Holloway Rd", structure: "Group", link: "www.awarenessvr.org", name: "Fun group in London")
Group.create(user_id: 7, city: "London", style: "Vipassana", address: "448 Holloway Rd", structure: "Group", link: "www.awarenessvr.org", name: "New hip london vibe")
Group.create(user_id: 8, city: "London", style: "Vipassana", address: "448 Holloway Rd", structure: "Group", link: "www.awarenessvr.org", name: "Meditaiton Nation")
Group.create(user_id: 9, city: "London", style: "Vipassana", address: "448 Holloway Rd", structure: "Group", link: "www.awarenessvr.org", name: "Join us!")

puts "Created groups"
