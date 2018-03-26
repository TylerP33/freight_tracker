#carriers

pulse_logistics = Carrier.create(username: "Tyler33568", email: "stevep@pulselogistics.com", password: "pulsefam", company_name: "Pulse Logistics")

saiaa = Carrier.create(username: "SAIAA2232", email: "loadinfo@saiaa.net", password: "weready123z", company_name: "SAIAA")

road_runner = Carrier.create(username: "RR2quick", email: "rr@roadrunner.com", password: "hereweare124512", company_name: "Road Runner")

jd_dunn = Carrier.create(username: "JDduncare", email: "jd@jddun.com", password: "werichwerock5522", company_name: "JD Dunn")

fleet_quote = Carrier.create(username: "FleetForDough22", email: "ff@fleet_quote.com", password: "wescamevery12321", company_name: "Fleet Quote")

hayden_transportation = Carrier.create(username: "Doug2545", email: "doug@hayden.com", password: "wedoheavyhauling@111", company_name: "Hayden Transportation")

#loads

load_1 = Load.create(pallet_count: 20, weight: 25000, description: "Metal pales", haz_mat: 0, carrier_id: 1)
load_2 = Load.create(pallet_count: 10, weight: 35000, description: "plastic molding pebbles", haz_mat: 0, carrier_id: 2)
load_3 = Load.create(pallet_count: 13, weight: 26734, description: "metal rods", haz_mat: 0, carrier_id: 3)
load_4 = Load.create(pallet_count: 25, weight: 45000, description: "electronics", haz_mat: 0, carrier_id: 4)
load_5 = Load.create(pallet_count: 19, weight: 37342, description: "pesticides", haz_mat: 1, carrier_id: 5)
load_6 = Load.create(pallet_count: 16, weight: 48042, description: "cow feed", haz_mat: 0, carrier_id: 6)

#routes

route_1 = Route.create(pickup_location: "Overland Park, KS", destination: "Denver, CO", consignee_name: "Harpers Manufacturing", pickup_date: "2018-06-22", delivery_date: "2018-06-25", load_id: 1)
route_2 = Route.create(pickup_location: "St. Joseph, MO", destination: "Fayettville, AK", consignee_name: "Born to Mine LLC", pickup_date: "2018-07-15", delivery_date: "2018-07-19", load_id: 2)
route_3 = Route.create(pickup_location: "Grandview, MO", destination: "Oregon, MO", consignee_name: "Reap the Saw Corp", pickup_date: "2018-09-10", delivery_date: "2018-09-12", load_id: 3)
route_4 = Route.create(pickup_location: "Wichita, KS", destination: "Chicago, IL", consignee_name: "NoName LLC", pickup_date: "2018-05-15", delivery_date: "2018-05-18", load_id: 4)
route_5 = Route.create(pickup_location: "Lenexa, KS", destination: "Dallas, TX", consignee_name: "Iron Pipes LLC", pickup_date: "2018-04-10", delivery_date: "2018-04-12", load_id: 5)
route_6 = Route.create(pickup_location: "St. Louis, MO", destination: "Cleveland, OH", consignee_name: "Electronics Abroad LLC", pickup_date: "2018-05-22", delivery_date: "2018-05-23", load_id: 6)








# NEED TO FIGURE OUT WHAT TO DO ABOUT PICKUP DATE DELIVERY DATE. TIME WISE, WE NEED TO HAVE THE RIGHT DATES





