User.destroy_all
Space.destroy_all



alex = User.create! email: "alex@alexander.com", password: "123123", first_name: "Alex", last_name: "Benoit"

Space.create! user: alex, name: "WeWork", address: "340 old street", industry: "Crafts", company_info: "WeWork, 130 old street, 07449949576"
Space.create! user: alex, name: "Nice Coworking", address: "90 Earls court road", industry: "Music", company_info: "Cool company, 130 old street, 07449949576"
Space.create! user: alex, name: "Shoreditch Platform", address: "Soho", industry: "Writer", company_info: "Stuff bla bla, 07449949576"
