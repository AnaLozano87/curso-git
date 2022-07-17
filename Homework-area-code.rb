
cities = { "newyork" => 212, "newbrunswick" => 732, "edison" => 908, "plainboro" => 609, "sanfrancisco" => 301, "miami" => 305, "paloalto" => 650, "evanstom" => 847, "orlando" => 407, "lancaster" => 717  }

  cities.each do |key, value|
      puts "#{key}: #{value}"
  end

  somehash = [
  {citi: "newyork", code: 212 }, 
  {citi: "newbrunswick", code: 732 },
  {citi: "edison", code: 908 },
  {citi: "plainboro", code: 609 },
  {citi: "sanfrancisco", code: 301 },
  {citi: "miami", code: 305 },
  {citi: "paloalto", code: 650 },
  {citi: "evanstom", code: 847 },
  {citi: "orlando", code: 407 },
  {citi: "lancaster", code: 717 }
]

# Get city names from the hash
def get_city_names(citi, code, list_of_cities)
  list_of_cities.each do |citi_record|
    if citi_record[:citi] == citi 
      return citi_record
    end
  end
  "citi is not correct"
end


attempts = 1
  while attempts < 4
    print  "citi: "
    citi = gets.chomp
    print "code: "
    code = gets.chomp
    list = get_city_names(citi, code, somehash)
    puts list
    puts "Press n to quiet or any other key continue: "
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
  end
  puts "You have exceeded the number of attemps" if attempts == 4
   

