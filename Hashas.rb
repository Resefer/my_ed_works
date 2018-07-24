o = {
  "today" => {
    "0" => 118,
    "127" => 686,
    "171" => 188,
    "208" => 12,
    "252" => 3,
    "267" => 14,
    "612" => 5,
    "737" => 91,
    "770" => 1,
    "781" => 2,
    "846" => 485
  },
  "yesterday" => {
    "0" => 53,
    "72" => 2,
    "127" => 573,
    "140" => 5,
    "171" => 165,
    "208" => 7,
    "252" => 12,
    "267" => 1,
    "737" => 56,
    "770" => 2,
    "781" => 4,
    "846" => 456,
    "1340" => 2
  }
}
ts_hash = {
  :momondo_ru => 72,
  :aviasales_ru => 127,
  :yandex => 171,
  :skyscanner_ru => 737,
  :skyscanner_fb => 846,
  :kayak_ru => 140,
  :btyandex => 466,
  :direct => 0
}
    
new_hash = {}


o.each do |day, day_data|
  
  day_data.each do |key, value|
    ts_hash.each do |name, id|
      if key.to_i == id.to_i
          if new_hash[day]
             new_hash[day].merge!({name => value})
          else
            new_hash[day] = {name => value}   
          end
        
        
        
        
        
         

      end
    end
  end 
end


    


  puts new_hash


