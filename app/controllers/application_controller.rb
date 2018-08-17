require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
    
  get '/' do
    erb :index
  end
  
  get '/region/westcoast' do
    erb :westcoast
  end
  
  get '/region/midwest' do
    erb :midwest
  end
  
  get '/region/south' do
    erb :south
  end
  
  get '/region/eastcoast' do
    erb :eastcoast
  end

  get '/region' do
    erb :region
  end
  get '/about' do
    erb :about
  end
  
  post '/region' do
    
  region = params[:home]
 
    if region == "Home"
      return erb :home
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
    
    elsif city == "Los_Angeles"
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
      
    elsif activity == "Breakfast"
      return erb :losangeles_breakfast
      
    elsif activity == "Shopping"
      return erb :losangeles_shopping
      
    elsif activity == "Eat_Lunch"
      return erb :losangeles_lunch
    
    elsif activity == "Landmark"
      return erb :losangeles_landmark
    
    elsif activity == "Entertainment"
      return erb :losangeles_entertainment
      
    elsif activity == "Dinner"
      return erb :losangeles_dinner
    else
	  return "wrong page"
    end 
  end 






post '/seattle_quiz' do
    activity = params[:activity]
    if activity == "Workout"
      return erb :seattle_workout
      
    elsif activity == "Breakfast"
      return erb :seattle_breakfast
      
    elsif activity == "Shopping"
      return erb :seattle_shopping
      
    elsif activity == "Eat_Lunch"
      return erb :seattle_lunch
    
    elsif activity == "Landmark"
      return erb :seattle_Landmark
    
    elsif activity == "Entertainment"
      return erb :seattle_entertainment
      
    elsif activity == "Dinner"
      return erb :seattle_dinner
    else
	    return "wrong page"
    end 
  end 


      
      

end