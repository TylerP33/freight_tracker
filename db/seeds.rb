#carriers

pulse_logistics = Carrier.create(username: "SJP3358", email: "stevep@pulselogistics.com", pasword: "pulsefam" company_name: "Pulse Logistics")

saiaa = Carrier.create(username: "SAIAA2232", email: "loadinfo@saiaa.net", pasword: "weready123z" company_name: "SAIAA")

road_runner = Carrier.create(username: "RR2quick", email: "rr@roadrunner.com", pasword: "hereweare124512" company_name: "Road Runner")

jd_dunn = Carrier.create(username: "JDduncare", email: "jd@jddun.com", pasword: "werichwerock5522" company_name: "JD Dunn")

fleet_quote = Carrier.create(username: "FleetForDough22", email: "ff@fleet_quote.com", pasword: "wescamevery12321" company_name: "Fleet Quote")

hayden_transportation = Carrier.create(username: "Doug2545", email: "doug@hayden.com", pasword: "wedoheavyhauling@111" company_name: "Hayden Transportation")

#deliveries





# NEED TO FIGURE OUT WHAT TO DO ABOUT PICKUP DATE DELIVERY DATE. TIME WISE, WE NEED TO HAVE THE RIGHT DATES







create_table "deliveries", force: :cascade do |t|
    t.string  "consignee"
    t.integer "pallet_count"
    t.integer "load_weight"
    t.integer "pickup_date"
    t.integer "delivery_date"
    t.string  "pickup_location"
    t.string  "delivery_location"
    t.integer "carrier_id"
  end



