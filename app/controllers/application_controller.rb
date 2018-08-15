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
    else
      return "wrong page"
    end
    
    
     if city == "Chicago"
      return erb :chicago
    else
      return "wrong page"
    end
    
     if city == "Detroit"
      return erb :detroit
    else
      return "wrong page"
    end
    
      if city == "Milwaukee"
      return erb :milwaukee
    else
      return "wrong page"
    end
    
     if city == "St. Louis"
      return erb :stlouis
    else
      return "wrong page"
    end



end
