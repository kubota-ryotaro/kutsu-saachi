require 'csv'
csv = CSV.read('db/fixtures/development/001_maps.csv')
csv.each do |maps|
  Map.seed do |s|
    s.id = maps[0]
    s.station_name = maps[1]
    s.category = maps[2]
    s.phone_number = maps[3]
    s.store_name = maps[4]
    s.address = maps[5]
    s.latitude = maps[6]
    s.longitude = maps[7]
    s.business_hours = maps[8]
    s.HP = maps[9]
    s.text = maps[10]
    s.favorite_flag = maps[11]
    s.size = maps[12]
  end
end
