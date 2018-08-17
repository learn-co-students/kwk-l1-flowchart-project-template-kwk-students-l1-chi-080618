require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end
  
  get '/index' do
    erb :index
  end
  
  get '/region' do
    erb :region
  end
  
  get '/about' do
    erb :about
  end
  
  get '/region/westcoast' do
    erb :westcoast
  end
  
  get '/region/eastcoast' do
    erb :eastcoast
  end
  
  get '/region/midwest' do
    erb :midwest
  end
  
  get '/region/south' do
    erb :south
  end


  post '/region' do
    region = params[:region]
 
    if region == "South"
      return erb :south

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
  
  
  post '/eastcoast_result' do
    
    city = params[:city]
 
    if city == "Boston"
      return erb :boston
      
    elsif city == "Nyc"
      return erb :nyc

    elsif city == "Philadelphia"
      return erb :philadelphia
    
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
    
    elsif city == "St_Louis"
      return erb :stlouis
    else
      return "wrong page"
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
  
  
  post '/south_result' do
    
    city = params[:city]
 
    if city == "Atlanta"
      return erb :atlanta
      
    elsif city == "Austin"
      return erb :austin

    elsif city == "New_Orleans"
      return erb :neworleans
    
    else
      return "wrong page"
    end
  end
  
  
  post '/Austin_quiz' do 
    activity = params[:activity]
    
    if activity == "workout"
      return erb :austin_workout
    
    elsif activity == "breakfast"
      return erb :austin_breakfast
    
    elsif activity == "shopping"
      return erb :austin_shopping
    
    elsif activity == "lunch"
      return erb :austin_lunch
    
    elsif activity == "attraction"
      return erb :austin_landmark
    
    elsif activity == "entertainment"
      return erb :austin_entertainment 
    
    elsif activity == "dinner"
      return erb :austin_dinner
    
    else 
      return "wrong page"
    end 
  end
   
   
  post '/Atlanta_Quiz' do 
    activity = params[:activity]
    
    if activity == "workout"
      return erb :atlanta_workout
    
    elsif activity == "breakfast"
      return erb :atlanta_breakfast
    
    elsif activity == "shopping"
      return erb :atlanta_shopping
    
    elsif activity == "lunch"
      return erb :atlanta_lunch
    
    elsif activity == "attraction"
      return erb :atlanta_landmark
    
    elsif activity == "entertainment"
      return erb :atlanta_entertainment 
    
    elsif activity == "dinner"
      return erb :atlanta_dinner
    
    else 
      return "wrong page"
    end 
  end
  
  
  
  post '/New_Orleans_Quiz' do 
    activity = params[:activity]
    
    if activity == "workout"
      return erb :neworleans_workout
  
    elsif activity == "breakfast"
      return erb :neworleans_breakfast
    
    elsif activity == "shopping"
      return erb :neworleans_shopping
    
    elsif activity == "lunch"
      return erb :neworleans_lunch
    
    elsif activity == "attraction"
      return erb :neworleans_landmark
    
    elsif activity == "entertainment"
      return erb :neworleans_entertainment 
    
    elsif activity == "dinner"
      return erb :neworleans_dinner
    
    else 
      return "wrong page"
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

  
  post '/chicago_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :chicago_workout
      
    elsif activity == "breakfast"
      return erb :chicago_breakfast
      
    elsif activity == "shopping"
      return erb :chicago_shopping
    
    elsif activity == "lunch"
      return erb :chicago_lunch
    
    elsif activity == "landmark"
      return erb :chicago_landmark
    
    elsif activity == "entertainment"
      return erb :chicago_entertainment 
    
    elsif activity == "dinner"
      return erb :chicago_dinner
      
    else 
      return "wrong page"
    end 
  end
  
  
   post '/boston_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :boston_workout
      
    elsif activity == "breakfast"
      return erb :boston_breakfast
      
    elsif activity == "shopping"
      return erb :boston_shopping
    
    elsif activity == "lunch"
      return erb :boston_lunch
    
    elsif activity == "landmark"
      return erb :boston_landmark
    
    elsif activity == "entertainment"
      return erb :boston_entertainment 
    
    elsif activity == "dinner"
      return erb :boston_dinner
      
    else 
      return "wrong page"
    end 
  end
  
  
   post '/philadelphia_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :philadelphia_workout
      
    elsif activity == "breakfast"
      return erb :philadelphia_breakfast
      
    elsif activity == "shopping"
      return erb :philadelphia_shopping
    
    elsif activity == "lunch"
      return erb :philadelphia_lunch
    
    elsif activity == "landmark"
      return erb :philadelphia_landmark
    
    elsif activity == "entertainment"
      return erb :philadelphia_entertainment 
    
    elsif activity == "dinner"
      return erb :philadelphia_dinner
      
    else 
      return "wrong page"
    end 
  end
  
  
  
   post '/nyc_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :nyc_workout
      
    elsif activity == "breakfast"
      return erb :nyc_breakfast
      
    elsif activity == "shopping"
      return erb :nyc_shopping
    
    elsif activity == "lunch"
      return erb :nyc_lunch
    
    elsif activity == "landmark"
      return erb :nyc_landmark
    
    elsif activity == "entertainment"
      return erb :nyc_entertainment 
    
    elsif activity == "dinner"
      return erb :nyc_dinner
  
    else 
      return "wrong page"
    end 
  end
  
  post '/detroit_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :detroit_workout
      
    elsif activity == "breakfast"
      return erb :detroit_breakfast
      
    elsif activity == "shopping"
      return erb :detroit_shopping
    
    elsif activity == "lunch"
      return erb :detroit_lunch
    
    elsif activity == "landmark"
      return erb :detroit_landmark
    
    elsif activity == "entertainment"
      return erb :detroit_entertainment 
    
    elsif activity == "dinner"
      return erb :detroit_dinner
  
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
  

 end
 