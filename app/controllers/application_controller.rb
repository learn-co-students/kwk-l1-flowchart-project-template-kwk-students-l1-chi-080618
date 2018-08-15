require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  
  require 'bundler'
Bundler.require
# require_relative 'models/question.rb'
# class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/quiz' do
    erb :'quiz'
  end
  
  # get '/question' do
  #   erb :question
  # end
  
  # get '/about' do
  #   erb :about
  # end
  
  post '/answer' do
    username=params[:name]
    @user_name=username.capitalize
    puts @user_name
    v1=params[:q1]
    v2=params[:q2]
    v3=params[:q3]
    p v3
    @user_ans = total(v1, v2, v3)
    p @user_ans
    if @user_ans == 111 
      restaurantName="Brightwok Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"


    elsif @user_ans == 211
    restaurantName="Furious Spoon"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://assets.dnainfo.com/generated/chicago_photo/2016/02/furious-spoon-pilsen--1455286123.jpg/extralarge.jpg"
      url="http://furiousramen.com/"
      
    elsif @user_ans == 311
    restaurantName="Duck Duck Goat"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="http://breakfastgator.com/wp-content/uploads/2016/07/DDG-Interior-7-W.jpg"
      url="http://duckduckgoatchicago.com/"
    
      
    elsif @user_ans == 121
    restaurantName="Portillo's"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://tribwxin.files.wordpress.com/2018/04/photo-credit-portillos-via-facebook.jpg?quality=85&strip=all&w=400&h=225&crop=1"
      url="https://www.portillos.com/index.html"
    
    elsif @user_ans == 221
    restaurantName="LYFE Kitchen"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRs4WUzUM1KWfdemOpSr0NuoZJueC3JXRizjC8VC_qDXr1f61dYw"
      url="http://www.lyfekitchen.com/"
    
    elsif @user_ans == 321
    restaurantName="Catch 35"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://www.chicagotraveler.com/sites/www.chicagotraveler.com/files/billboard/catch-35-restaurant_C.jpg"
      url="http://www.catch35.com/"

elsif @user_ans == 131
    restaurantName="Al's Italian Beef"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://i.ytimg.com/vi/Rj1M6B9f97Q/maxresdefault.jpg"
      url="https://www.alsbeef.com/"
      
      
      elsif @user_ans == 231
    restaurantName="Sapori Trattoria"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://img.grouponcdn.com/deal/e56c6e09d4634106a86a08b23ffac6fa/fa/v1/c700x420.jpg"
      url="http://www.saporitrattoria.net/"
      
      elsif @user_ans == 331
    restaurantName="Affresco Pizzeria and Lounge"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://img.grouponcdn.com/deal/c2e07fd69dcc46bab51afe62292d584b/4b/v1/c700x420.jpg"
      url="https://affrescopizzeria.com/"
      
      elsif @user_ans == 141
    restaurantName="Adobo Grill"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="http://gozamos.com/wp-content/uploads/2010/07/adobo-grill.jpg"
      url="https://www.adobogrill.davinci-group.com/"
      
      
      elsif @user_ans == 241
    restaurantName="El Tapatio"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media-cdn.tripadvisor.com/media/photo-s/02/d3/2b/4b/cafe-el-tapatio.jpg"
      url="http://www.cafeeltapatio.com/"
      
      elsif @user_ans == 341
    restaurantName="Topolobampo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="http://www.rickbayless.com/wp-content/uploads/2017/07/TopoloSliderb1000x554.jpg"
      url="http://www.rickbayless.com/restaurants/topolobampo/"
      
      
      elsif @user_ans == 151
    restaurantName="Roti Modern Mediterranean"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://roti.com/wp-content/themes/roti/images/placeholder/about/rollover-food2.jpg"
      url="https://roti.com/"
      
      
      elsif @user_ans == 251
    restaurantName="Athena Greek Restaurant"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="http://www.athenarestaurantchicago.com/images/content/gallery/insidepano.png"
      url="http://www.athenarestaurantchicago.com/"
      
      
      elsif @user_ans == 351
    restaurantName="Fig and Olive"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://assets3.thrillist.com/v1/image/1526993/size/tmg-article_default_mobile.jpg"
      url="https://www.figandolive.com/"
      
      elsif @user_ans == 161
    restaurantName="Aloha Poke"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://cdn.vox-cdn.com/thumbor/LE4j3Jijweg7R1Nl_bRp87IJMzs=/0x0:1024x683/1200x800/filters:focal(357x271:519x433)/cdn.vox-cdn.com/uploads/chorus_image/image/59884101/AlohaPoke_29_1024x683.0.jpg"
      url="https://www.alohapokeco.com/"
      
      
      elsif @user_ans == 261
    restaurantName="Chicago Diner"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://c.o0bg.com/rf/image_960w/Boston/2011-2020/2014/02/13/BostonGlobe.com/Lifestyle/Images/ILveggie-dagwood.jpg"
      url="http://www.veggiediner.com/"
      
      elsif @user_ans == 361
    restaurantName="Everest"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://resizer.otstatic.com/v2/photos/large/24611439.jpg"
      url="http://www.everestrestaurant.com/"
      
      elsif @user_ans == 171
    restaurantName="Oberweis"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
      elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"

 elsif @user_ans == 371
    restaurantName="Westtown Bakery"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"
      
       elsif @user_ans == 271
    restaurantName="FRIO Gelato"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{restaurantName}</a> </b> is the restaurant that will best accommodate your allergy!"
      descrip= "#{restaurantName} has a gluten-free, dairy-free, and peanut-free menu, and all of their homemade sauces are vegan. It is a counter style, veggie-focused, Asian inspired restaurant that believes in daily food prep."
      img="https://media.timeout.com/images/104064944/630/472/image.jpg"
      url="https://brightwok.com/"

    else
      welcome ="In order to get a solution you must complete all the answers to the test"
      img="https://blog.sqlauthority.com/i/a/errorstop.png"
    end
    @results=[welcome, dogName, descrip, img, url]
    erb :answer
  end

end


# end
