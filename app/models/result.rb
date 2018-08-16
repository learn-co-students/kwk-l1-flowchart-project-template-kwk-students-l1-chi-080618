def calculate_result(total)
  if total <= 7
    return "mars"
  
  elsif total <= 21
    return "mercury"
    
  elsif total <= 28
    return "moon"
    
  elsif total <= 35 
    return "sun"
    
  elsif total <= 42
    puts "pluto"
    
  elsif total <= 49
    return "venus"
    
  elsif total <= 56
    return "earth"
    
  elsif total <= 63
    return "jupiter"
    
  elsif total <= 70
    return "saturn"
    
  elsif total <= 77 
    return "uranus"
    
  elsif total <= 84
    return "neptune"
    
  else
    return "alien"
    
  end 

end