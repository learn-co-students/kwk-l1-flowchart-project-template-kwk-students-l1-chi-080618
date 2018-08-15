require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
    
  get '/'do
    erb :index
  end
  
  post '/result' do
    
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