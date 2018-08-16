require './config/environment'
require './app/models/result'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  get '/' do
    return erb :index
  end
  
  get '/solarsystem' do
    return erb :solarsystem
  end
  
  get '/astrology' do
    return erb :astrology
  end
  
  get '/universenews' do
    return erb :universenews
  end
  
  get '/quiz' do
    return erb :quiz
  end
  
  get '/other' do
    return erb :other
  end
  
  post '/results' do 
    points_array = params.values
    puts points_array
    total = 0 
    points_array.each do |point|
      total += point.to_i
    end
    
    puts "TOTAL ****** #{total}"

    result = calculate_result(total)

    if result == "mars"
      return erb :mars
    elsif result == "venus"
      return erb :venus
    elsif result == "mercury"
      return erb :mercury
    elsif result == "moon"
      return erb :moon
    elsif result == "sun"
      return erb :sun
    elsif result == "pluto"
      return erb :pluto
    elsif result == "earth"
      return erb :earth
    elsif result == "jupiter"
      return erb :jupiter
    elsif result == "saturn"
      return erb :saturn
    elsif result == "uranus"
      return erb :uranus
    elsif result == "neptune"
      return erb :neptune
    elsif result == "alien"
      return erb :alien
    end
  end
end