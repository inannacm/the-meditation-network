

puts "Destroying users"
User.destroy_all


khiran = User.create(first_name: "Khiran", last_name: "O'neill", email: "fake@fake.com", password: "123123")
caroline = User.create(first_name: "Caroline", last_name: "Medina", email: "faker@fake.com", password: "234234")
patrick = User.create(first_name: "Patrick", last_name: "Ronk", email: "fakers@fake.com", password: "345345")
mira = User.create(first_name: "Mira", last_name: "Craig-Morse", email: "fakerest@fake.com", password: "456456")

puts "Created users"

puts "Destroying groups"
Group.destroy_all
Group.create(user: khiran, city: "London", style: "Vipassana", address: "448 Holloway Rd", structure: "Group", link: "www.awarenessvr.org", name: "Fun group in London")
Group.create(user: caroline, city: "London", style: "Vipassana", address: "448 Holloway Rd", structure: "Group", link: "www.awarenessvr.org", name: "New hip london vibe")
Group.create(user: patrick, city: "London", style: "Vipassana", address: "448 Holloway Rd", structure: "Group", link: "www.awarenessvr.org", name: "Meditaiton Nation")
Group.create(user: mira, city: "London", style: "Vipassana", address: "448 Holloway Rd", structure: "Group", link: "www.awarenessvr.org", name: "Join us!")

puts "Created groups"
