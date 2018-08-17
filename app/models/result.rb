def calculate_result(total)
  if total <= 7
    return "mars"
  
  elsif total <= 10
    return "mercury"
    
  elsif total <= 15
    return "moon"
    
  elsif total <= 20 
    return "sun"
    
  elsif total <= 30
    return "pluto"
    
  elsif total <= 35
    return "venus"
    
  elsif total <= 40
    return "earth"
    
  elsif total <= 45
    return "jupiter"
    
  elsif total <= 50
    return "saturn"
    
  elsif total <= 58 
    return "uranus"
    
  elsif total <= 63
    return "neptune"
    
  elsif total >= 1000
    return "alien"
    
  end 

end