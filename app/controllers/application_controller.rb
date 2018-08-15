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
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end

post '/results2' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end
  
  post '/results3' do
    
    letter_array = params.values 
    answer = letter_array.join("")
    
    puts answer
    return answer
      
  end



end

