require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    erb :index
  end
  
  post '/results' do
    
    place = params[:place]
    price = params[:price] 
    commitment = params[:commitment]
    city = params[:city]
    
    if place == "virtual"
      return "virtual page"
    elsif place == "physical"
      return "physical page"
    else
      return "wrong page"
    end
    
  end
  
  get '/about_us' do
    erb :about_us
  end
  
  get '/homepage' do
    erb  :homepage
  end

end


