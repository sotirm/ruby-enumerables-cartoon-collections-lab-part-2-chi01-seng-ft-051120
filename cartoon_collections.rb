def square_array(array)
  array.map {|num| num * num}
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map{|element| element.capitalize + "!"}
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any?{|element| element.length > 4 }
end

def find_valid_calls(planeteer_calls)
  valid_calls = ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
  planeteer_calls.each do |planeteer_call|   
    is_valid_call = valid_calls.any? do |valid_call| 
      valid_call == planeteer_call
      binding.pry
    end
    #binding.pry
    if (is_valid_call == true)
      return planeteer_call 
    end
  end
  return nil 
end
