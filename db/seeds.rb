User.destroy_all
Space.destroy_all
Table.destroy_all

harry = User.create! email: "harry@aol.com", password: "123123", first_name: "Harry", last_name: "Benoit", photo: File.open("app/assets/images/harry.jpg", 'r')
ralph = User.create! email: "ralph@ralph.com", password: "123123", first_name: "Ralph", last_name: "Jones", photo: File.open("app/assets/images/ralph.jpg", 'r')
fahad = User.create! email: "alkubaisi9@gmail.com", password: "123123", first_name: "Fahad", last_name: "Fahad", photo: File.open("app/assets/images/fahad.jpg", 'r')
kit = User.create! email: "kit@kit.com", password: "987987", first_name: "Kit", last_name: "Kit", photo: File.open("app/assets/images/kit.jpg", 'r')


space1 = Space.create! user: fahad, company_name: "WeWork Old Street", address: "340 old street", industry: "Crafts", company_info: "WeWork, 130 old street, 07449949576. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/wework1.jpg", 'r'), File.open("app/assets/images/wework2.jpg", 'r')], wifi: true, lockers: true, security: true, event_space: true
space2 = Space.create! user: ralph, company_name: "Le Wagon", address: "1 Elder Street London", industry: "Product Design", company_info: "A coding bootcamp for creatives founded in 2010. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/lewagon1.png", 'r'), File.open("app/assets/images/lewagon2.jpg", 'r')], reception: true, phone_booth: true, kitchen: true, showers: true
space3 = Space.create! user: harry, company_name: "Apple", address: "Covent Garden WC1", industry: "Product Design", company_info: "A small start up in Covent Garden with spare desks. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/apple1.jpg", 'r'), File.open("app/assets/images/apple2.jpg", 'r')], lockers: true, bike_storage: true, always_open: true, kitchen: true, showers: true, cafe_restaurant: true
space4 = Space.create! user: harry, company_name: "WeWork London Bridge", address: "London Bridge", industry: "Graphic Design", company_info: "Graphic Designers welcome colab. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/graphic1.jpg", 'r'), File.open("app/assets/images/graphic2.jpg", 'r')], wifi: true, always_open: true, showers: true, cafe_restaurant: true, security: true
space5 = Space.create! user: harry, company_name: "Wimbledon Common Road", address: "Wimbledon SW19", industry: "Writer", company_info: "Great views over the commom, near the tennis too. We offer great workspace for serious entrepreners and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/wimbledon1.jpg", 'r'), File.open("app/assets/images/wimbledon2.jpg", 'r')], kitchen: true, showers: true, cafe_restaurant: true
space6 = Space.create! user: kit, company_name: "Clapham", address: "Northcote Road", industry: "Fashion Design", company_info: "A dynamic fashion design company with space to spare. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/fashion1.jpg", 'r'), File.open("app/assets/images/fashion2.jpg", 'r')], wifi: true, phone_booth: true, bike_storage: true

space7 = Space.create! user: harry, company_name: "Startup Harry", address: "34 old street", industry: "Graphic Design", company_info: "StartUp Harry is a national campaign by entrepreneurs for entrepreneurs, harnessing the expertise and passion of Britain’s leading businesspeople to unleash entrepreneurship across the UK.", photos: [File.open("app/assets/images/advert.jpg", 'r'), File.open("app/assets/images/advert2.jpg", 'r')], wifi: true, lockers: true, security: true, event_space: true
space8 = Space.create! user: ralph, company_name: "Snotties", address: "70 old street", industry: "Graphic Design", company_info: "Founded in 2011 by a former gallerist who got tired of sifting through cumbersome binders, Snotties was created to give art galleries a new way to manage their inventory.", photos: [File.open("app/assets/images/art.jpg", 'r'), File.open("app/assets/images/art2.jpg", 'r')], wifi: true, lockers: true, security: true, event_space: true, showers: true, cafe_restaurant: true
space9 = Space.create! user: fahad, company_name: "Fahad Adverts", address: "Canary Wharf", industry: "Advertising and marketing", company_info: "Fahad Adverts is an independent creative company, that makes UK, pan-Euro and global creative work for a whole host of clients.", photos: [File.open("app/assets/images/advert2.jpg", 'r'), File.open("app/assets/images/architect.jpg", 'r')], wifi: true, lockers: true, security: true, event_space: true, showers: true, cafe_restaurant: true
space10 = Space.create! user: fahad, company_name: "FA Industries", address: "Liverpool Street", industry: "Graphic Design", company_info: "Belonging to one of the most trusted IT support companies in London, Prosyn engineers will react quickly to your daily concerns and are dedicated to helping you improve productivity while reducing stress through the use of appropriate IT solutions.", photos: [File.open("app/assets/images/film.jpg", 'r'), File.open("app/assets/images/film2.jpg", 'r')], wifi: true, lockers: true, security: true, event_space: true
space11 = Space.create! user: kit, company_name: "Silvercourt", address: "340 old street", industry: "Graphic Design", company_info: "At Silvercourt, we offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/architect.jpg", 'r'), File.open("app/assets/images/architect2.jpg", 'r')], wifi: true, lockers: true, security: true, event_space: true, kitchen: true, showers: true, cafe_restaurant: true
space12 = Space.create! user: kit, company_name: "Weiko", address: "Covent Garden WC1", industry: "Graphic Design", company_info: "WeWork, 130 old street, 07449949576. We offer great workspace for serious entrepreneurs and coders. There are tons of available staff that are happy to answer any technical question you may have.", photos: [File.open("app/assets/images/advert.jpg", 'r'), File.open("app/assets/images/advert2.jpg", 'r')], wifi: true, lockers: true, security: true, event_space: true, kitchen: true, showers: true, cafe_restaurant: true


table = Table.create! space: space1, desk_type: "private hot desk", price: 34
table = Table.create! space: space1, desk_type: "hot desk", price: 20
table = Table.create! space: space1, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space1, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space2, desk_type: "private hot desk", price: 34
table = Table.create! space: space2, desk_type: "hot desk", price: 20
table = Table.create! space: space2, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space2, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space3, desk_type: "private hot desk", price: 34
table = Table.create! space: space3, desk_type: "hot desk", price: 20
table = Table.create! space: space3, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space3, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space4, desk_type: "private hot desk", price: 34
table = Table.create! space: space4, desk_type: "hot desk", price: 20
table = Table.create! space: space4, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space4, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space5, desk_type: "private hot desk", price: 34
table = Table.create! space: space5, desk_type: "hot desk", price: 20
table = Table.create! space: space5, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space5, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space6, desk_type: "private hot desk", price: 34
table = Table.create! space: space6, desk_type: "hot desk", price: 20
table = Table.create! space: space6, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space6, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space7, desk_type: "private hot desk", price: 34
table = Table.create! space: space7, desk_type: "hot desk", price: 20
table = Table.create! space: space7, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space7, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space8, desk_type: "private hot desk", price: 34
table = Table.create! space: space8, desk_type: "hot desk", price: 20
table = Table.create! space: space8, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space8, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space9, desk_type: "private hot desk", price: 34
table = Table.create! space: space9, desk_type: "hot desk", price: 20
table = Table.create! space: space9, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space9, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space10, desk_type: "private hot desk", price: 34
table = Table.create! space: space10, desk_type: "hot desk", price: 20
table = Table.create! space: space10, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space10, desk_type: "fixed desk with city view", price: 96

table = Table.create! space: space11, desk_type: "private hot desk", price: 34
table = Table.create! space: space11, desk_type: "hot desk", price: 20
table = Table.create! space: space11, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space11, desk_type: "fixed desk with city view", price: 100

table = Table.create! space: space12, desk_type: "private hot desk", price: 34
table = Table.create! space: space12, desk_type: "hot desk", price: 20
table = Table.create! space: space12, desk_type: "fixed desk with no view", price: 75
table = Table.create! space: space12, desk_type: "fixed desk with city view", price: 96
