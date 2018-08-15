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
    
    elsif city == "St. Louis"
      return erb :stlouis
    else
      return "wrong page"
    end 
  end

end