User.destroy_all
Space.destroy_all
Table.destroy_all

alex = User.create! email: "alex@alexander.com", password: "123123", first_name: "Alex", last_name: "Benoit", photo: File.open("app/assets/images/harry.jpg", 'r')
ralph = User.create! email: "ralph@ralph.com", password: "123123", first_name: "Ralph", last_name: "Jones", photo: File.open("app/assets/images/ralph.jpg", 'r')
fahad = User.create! email: "fahad@fahad.com", password: "123123", first_name: "Fahad", last_name: "Fahad", photo: File.open("app/assets/images/fahad.jpg", 'r')
kit = User.create! email: "kit@kit.com", password: "123123", first_name: "Kit", last_name: "Kit", photo: File.open("app/assets/images/kit.jpg", 'r')


space1 = Space.create! user: alex, company_name: "WeWork Old Street", address: "340 old street", industry: "Crafts", company_info: "WeWork, 130 old street, 07449949576. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/wework1.jpg", 'r'), File.open("app/assets/images/wework2.jpg", 'r')], wifi: true, lockers: true, security: true, event_space: true
space2 = Space.create! user: ralph, company_name: "Le Wagon", address: "1 Elder Street", industry: "Product Design", company_info: "A coding bootcamp for creatives founded in 2010. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/lewagon1.png", 'r'), File.open("app/assets/images/lewagon2.jpg", 'r')], reception: true, phone_booth: true, kitchen: true, showers: true
space3 = Space.create! user: fahad, company_name: "Apple", address: "Covent Garden WC1", industry: "Product Design", company_info: "A small start up in Covent Garden with spare desks. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/apple1.jpg", 'r'), File.open("app/assets/images/apple2.jpg", 'r')], lockers: true, bike_storage: true, always_open: true
space4 = Space.create! user: alex, company_name: "WeWork London Bridge", address: "London Bridge", industry: "Graphic Design", company_info: "Graphic Designers welcome colab. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/graphic1.jpg", 'r'), File.open("app/assets/images/graphic2.jpg", 'r')], wifi: true, always_open: true, showers: true, cafe_restaurant: true, security: true
space5 = Space.create! user: ralph, company_name: "Wimbledon Common Road", address: "Wimbledon SW19", industry: "Writer", company_info: "Great views over the commom, near the tennis too. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/wimbledon1.jpg", 'r'), File.open("app/assets/images/wimbledon2.jpg", 'r')], kitchen: true, showers: true, cafe_restaurant: true
space6 = Space.create! user: kit, company_name: "Clapham", address: "Northcote Road", industry: "Fashion Design", company_info: "A dynamic fashion design company with space to spare. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/fashion1.jpg", 'r'), File.open("app/assets/images/fashion2.jpg", 'r')], wifi: true, phone_booth: true, bike_storage: true


table = Table.create! space: space1, desk_type: "hot desk", price: 34
table = Table.create! space: space1, desk_type: "hot desk", price: 20
table = Table.create! space: space1, desk_type: "fixed desk", price: 75
table = Table.create! space: space1, desk_type: "fixed desk", price: 100

table = Table.create! space: space2, desk_type: "hot desk", price: 34
table = Table.create! space: space2, desk_type: "hot desk", price: 20
table = Table.create! space: space2, desk_type: "fixed desk", price: 75
table = Table.create! space: space2, desk_type: "fixed desk", price: 100

table = Table.create! space: space3, desk_type: "hot desk", price: 34
table = Table.create! space: space3, desk_type: "hot desk", price: 20
table = Table.create! space: space3, desk_type: "fixed desk", price: 75
table = Table.create! space: space3, desk_type: "fixed desk", price: 100

table = Table.create! space: space4, desk_type: "hot desk", price: 34
table = Table.create! space: space4, desk_type: "hot desk", price: 20
table = Table.create! space: space4, desk_type: "fixed desk", price: 75
table = Table.create! space: space4, desk_type: "fixed desk", price: 100

table = Table.create! space: space5, desk_type: "hot desk", price: 34
table = Table.create! space: space5, desk_type: "hot desk", price: 20
table = Table.create! space: space5, desk_type: "fixed desk", price: 75
table = Table.create! space: space5, desk_type: "fixed desk", price: 100

table = Table.create! space: space6, desk_type: "hot desk", price: 34
table = Table.create! space: space6, desk_type: "hot desk", price: 20
table = Table.create! space: space6, desk_type: "fixed desk", price: 75
table = Table.create! space: space6, desk_type: "fixed desk", price: 100
