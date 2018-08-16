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




  

