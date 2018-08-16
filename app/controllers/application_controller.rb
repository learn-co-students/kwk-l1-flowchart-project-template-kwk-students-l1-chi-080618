require './config/environment'
class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/'do
    erb :region
  end
  
post '/region' do
    region = params[:region]
 
    if region == "South"
      return erb :south
      
    elsif region == "Southeast"
      return erb :southeast

    elsif region == "Midwest"
      return erb :midwest
    
    elsif region == "Westcoast"
      return erb :westcoast
    
    elsif region == "Eastcoast"
      return erb :eastcoast
    
    else
      return "wrong page"
    end
  end
  
  post '/south_quiz' do
    city = params[:city]
    
    if city == "Austin"
      return erb :Austin
    elsif city == "New_Orleans"
      return erb :Neworleans
    elsif city == "Atlanta"
      return erb :Atlanta
    elsif city == "Nashville"
      return erb :Nashville
    else
      return "wrong page"
    end
  end
  
  post '/Austin_Quiz' do 
    activity = params[:activity]
    
    if activity == "workout"
      return erb :Austin_workout
    
    elsif activity == "breakfast"
      return erb :Austin_breakfast
    
    elsif activity == "shopping"
      return erb :Austin_shopping
    
    elsif activity == "lunch"
      return erb :Austin_lunch
    
    elsif activity == "attraction"
      return erb :Austin_landmark
    
    elsif activity == "entertainment"
      return erb :Austin_entertainment 
    
    elsif activity == "dinner"
      return erb :Austin_dinner
    
    else 
      return "wrong page"
    end 
  end
   
  post '/Atlanta_Quiz' do 
    activity = params[:activity]
    
    if activity == "workout"
      return erb :Atlanta_workout
    
    elsif activity == "breakfast"
      return erb :Atlanta_breakfast
    
    elsif activity == "shopping"
      return erb :Atlanta_shopping
    
    elsif activity == "lunch"
      return erb :Atlanta_lunch
    
    elsif activity == "attraction"
      return erb :Atlanta_landmark
    
    elsif activity == "entertainment"
      return erb :Atlnta_entertainment 
    
    elsif activity == "dinner"
      return erb :Atlanta_dinner
    
    else 
      return "wrong page"
    end 
  end
  
  
  
  post '/New_Orleans_Quiz' do 
    activity = params[:activity]
    
    if activity == "workout"
      return erb :New_Orleans_workout
    
    elsif activity == "breakfast"
      return erb :New_Orleans_breakfast
    
    elsif activity == "shopping"
      return erb :New_Orleans_shopping
    
    elsif activity == "lunch"
      return erb :New_Orleans_lunch
    
    elsif activity == "attraction"
      return erb :New_Orleans_landmark
    
    elsif activity == "entertainment"
      return erb :New_Orleans_entertainment 
    
    elsif activity == "dinner"
      return erb :New_Orleans_dinner
    
    else 
      return "wrong page"
    end 
  end
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
  post '/result' do
    
    city = params[:city]
    
    if city == "Chicago"
      return erb :chicago
    elsif city == "Detroit"
      return erb :detroit
    elsif city == "Milwaukee"
      return erb :milwaukee
    elsif city == "St. Louis"
      return erb :stlouis
    else
      return "wrong page"
    end
  end
  
  post '/st.louis_quiz' do 
    activity = params[:activity]
    
    if activity == "workout"
      return erb :stlouis_workout
    
    elsif activity == "breakfast"
      return erb :stlouis_breakfast
    
    elsif activity == "shopping"
      return erb :stlouis_shopping
    
    elsif activity == "lunch"
      return erb :stlouis_lunch
    
    elsif activity == "attraction"
      return erb :stlouis_landmark
    
    elsif activity == "entertainment"
      return erb :stlouis_entertainment 
    
    elsif activity == "dinner"
      return erb :stlouis_dinner
    
    else 
      return "wrong page"
    end 
  end


end




  

