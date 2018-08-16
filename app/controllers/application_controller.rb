require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
    
  get '/' do
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
    
    elsif region == "Eastcoast"
      return erb :eastcoast
      
    elsif region == "Westcoast"
      return erb :westcoast
    else
      return "wrong page"
    end 
  end
  
  
  post '/midwest_result' do
    
    city = params[:city]
 
    if city == "Chicago"
      return erb :chicago
    
    elsif city == "Detroit"
      return erb :detroit

    elsif city == "Milwaukee"
      return erb :milwaukee
    
    elsif city == "St._Louis"
      return erb :stlouis
    else
      return "wrong_page"
    end 
  end
  
  post '/westcoast_result' do
    
    city = params[:city]
 
    if city == "Phoenix"
      return erb :phoenix
    
    elsif city == "Los Angeles"
      return erb :losangeles

    elsif city == "Seattle"
      return erb :seattle

    else
      return "wrong_page"
    end 
  end
  
  
  post '/milwaukee_quiz' do
    activity = params[:activity]
    if activity == "Workout"
      return erb :milwaukee_workout
      
    elsif activity == "Eat_Breakfast"
      return erb :milwaukee_breakfast
      
    elsif activity == "Go_Shopping"
      return erb :milwaukee_shopping
      
    elsif activity == "Eat_Lunch"
      return erb :milwaukee_lunch
    
    elsif activity == "Visit_a_Local_Landmark"
      return erb :milwaukee_Landmark
    
    elsif activity == "Find_Entertainment"
      return erb :milwaukee_entertainment
      
    elsif activity == "Eat_Dinner_and_Dessert"
      return erb :milwaukee_dessert
    end 
  end 
  
  
 
post '/phoenix_quiz' do
    activity = params[:activity]
    
    if activity == "Workout"
      return erb :phoenix_workout
      
    elsif activity == "Eat_Breakfast"
      return erb :phoenix_breakfast
      
    elsif activity == "Go_Shopping"
      return erb :phoenix_shopping
      
    elsif activity == "Eat_Lunch"
      return erb :phoenix_lunch
    
    elsif activity == "Visit_a_Local_Landmark"
      return erb :phoenix_landmark
    
    elsif activity == "Find_Entertainment"
      return erb :phoenix_entertainment
      
    elsif activity == "Eat_Dinner_and_Dessert"
      return erb :phoenix_dinner
    else 
      return "wrong page"
    end 
  end 




post '/losangeles_quiz' do
    activity = params[:activity]
    if activity == "Workout"
      return erb :losangeles_workout
      
    elsif activity == "Eat_Breakfast"
      return erb :losangeles_breakfast
      
    elsif activity == "Go_Shopping"
      return erb :losangeles_shopping
      
    elsif activity == "Eat_Lunch"
      return erb :losangeles_lunch
    
    elsif activity == "Visit_a_Local_Landmark"
      return erb :losangeles_Landmark
    
    elsif activity == "Find_Entertainment"
      return erb :losangeles_entertainment
      
    elsif activity == "Eat_Dinner_and_Dessert"
      return erb :losangeles_dessert
    else
	  return "wrong page"
    end 
  end 






post '/seattle_quiz' do
    activity = params[:activity]
    if activity == "Workout"
      return erb :seattle_workout
      
    elsif activity == "Eat_Breakfast"
      return erb :seattle_breakfast
      
    elsif activity == "Go_Shopping"
      return erb :seattle_shopping
      
    elsif activity == "Eat_Lunch"
      return erb :seattle_lunch
    
    elsif activity == "Visit_a_Local_Landmark"
      return erb :seattle_Landmark
    
    elsif activity == "Find_Entertainment"
      return erb :seattle_entertainment
      
    elsif activity == "Eat_Dinner_and_Dessert"
      return erb :seattle_dessert
    else
	    return "wrong page"
    end 
  end 


      
      

end