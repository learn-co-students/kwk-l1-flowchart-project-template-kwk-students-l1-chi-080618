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
    erb :'index.html'
  end
  get '/quiz.html' do
    erb :'quiz.html'
  end
  
  get '/question' do
    erb :question
  end
  
  get '/about' do
    erb :about
  end
  
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

    
    elsif @user_ans == 23110
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"
     
    elsif @user_ans == 33110
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"
    elsif @user_ans == 14110
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

    elsif @user_ans == 24110
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

    elsif @user_ans == 34110
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful."
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

    elsif @user_ans == 15110
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

    elsif @user_ans == 25110
    dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

    elsif @user_ans == 35110
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

    elsif @user_ans == 13210
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

    elsif @user_ans == 23210
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

    elsif @user_ans == 33210
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

    elsif @user_ans == 14210
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

    elsif @user_ans == 24210
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

    elsif @user_ans == 34210
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

elsif @user_ans == 15210
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

elsif @user_ans == 25210
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

elsif @user_ans == 35210
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

elsif @user_ans == 13310
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 23310
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 33310
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 14310
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 24310
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 34310
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 15310
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 25310
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 35310
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 13120
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"
      
elsif @user_ans == 23120
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 33120
      dogName="German Shepard"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They do not adapt very well to apartment living, are not the best choice for a new owner, can tolerate being alone, can tolerate the cold very well, can tolerate the heat well. They are very friendly towards your family and children, but not very friendly towards other dogs and strangers. They shed a lot, do not drool, are very easy to groom, have very little potential for gaining weight, and relatively large dogs. They are very easy to train, are very smart, have a high tendency to to bark or howl. They are very playful, intense, and need a lot of exercise." 
      img="https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/German-Shepherd.jpg"
      url="https://en.wikipedia.org/wiki/German_Shepherd"

elsif @user_ans == 14120
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 24120
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 34120
      dogName="German Shepard"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They do not adapt very well to apartment living, are not the best choice for a new owner, can tolerate being alone, can tolerate the cold very well, can tolerate the heat well. They are very friendly towards your family and children, but not very friendly towards other dogs and strangers. They shed a lot, do not drool, are very easy to groom, have very little potential for gaining weight, and relatively large dogs. They are very easy to train, are very smart, have a high tendency to to bark or howl. They are very playful, intense, and need a lot of exercise." 
      img="https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/German-Shepherd.jpg"
      url="https://en.wikipedia.org/wiki/German_Shepherd"

elsif @user_ans == 15120
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 25120
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 35120
      dogName="German Shepard"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They do not adapt very well to apartment living, are not the best choice for a new owner, can tolerate being alone, can tolerate the cold very well, can tolerate the heat well. They are very friendly towards your family and children, but not very friendly towards other dogs and strangers. They shed a lot, do not drool, are very easy to groom, have very little potential for gaining weight, and relatively large dogs. They are very easy to train, are very smart, have a high tendency to to bark or howl. They are very playful, intense, and need a lot of exercise." 
      img="https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/German-Shepherd.jpg"
      url="https://en.wikipedia.org/wiki/German_Shepherd"

elsif @user_ans == 13220
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

elsif @user_ans == 23220
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 33220
      dogName="German Shepard"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They do not adapt very well to apartment living, are not the best choice for a new owner, can tolerate being alone, can tolerate the cold very well, can tolerate the heat well. They are very friendly towards your family and children, but not very friendly towards other dogs and strangers. They shed a lot, do not drool, are very easy to groom, have very little potential for gaining weight, and relatively large dogs. They are very easy to train, are very smart, have a high tendency to to bark or howl. They are very playful, intense, and need a lot of exercise." 
      img="https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/German-Shepherd.jpg"
      url="https://en.wikipedia.org/wiki/German_Shepherd"

elsif @user_ans == 14220
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 24220
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 34220
      dogName="German Shepard"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They do not adapt very well to apartment living, are not the best choice for a new owner, can tolerate being alone, can tolerate the cold very well, can tolerate the heat well. They are very friendly towards your family and children, but not very friendly towards other dogs and strangers. They shed a lot, do not drool, are very easy to groom, have very little potential for gaining weight, and relatively large dogs. They are very easy to train, are very smart, have a high tendency to to bark or howl. They are very playful, intense, and need a lot of exercise." 
      img="https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/German-Shepherd.jpg"
      url="https://en.wikipedia.org/wiki/German_Shepherd"

elsif @user_ans == 15220
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 15220
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 35220
      dogName="German Shepard"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They do not adapt very well to apartment living, are not the best choice for a new owner, can tolerate being alone, can tolerate the cold very well, can tolerate the heat well. They are very friendly towards your family and children, but not very friendly towards other dogs and strangers. They shed a lot, do not drool, are very easy to groom, have very little potential for gaining weight, and relatively large dogs. They are very easy to train, are very smart, have a high tendency to to bark or howl. They are very playful, intense, and need a lot of exercise." 
      img="https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/German-Shepherd.jpg"
      url="https://en.wikipedia.org/wiki/German_Shepherd"

elsif @user_ans == 13320
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

elsif @user_ans == 23320
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 33320
      dogName="German Shepard"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They do not adapt very well to apartment living, are not the best choice for a new owner, can tolerate being alone, can tolerate the cold very well, can tolerate the heat well. They are very friendly towards your family and children, but not very friendly towards other dogs and strangers. They shed a lot, do not drool, are very easy to groom, have very little potential for gaining weight, and relatively large dogs. They are very easy to train, are very smart, have a high tendency to to bark or howl. They are very playful, intense, and need a lot of exercise." 
      img="https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/German-Shepherd.jpg"
      url="https://en.wikipedia.org/wiki/German_Shepherd"

elsif @user_ans == 14320
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 24320
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 34320
      dogName="German Shepard"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They do not adapt very well to apartment living, are not the best choice for a new owner, can tolerate being alone, can tolerate the cold very well, can tolerate the heat well. They are very friendly towards your family and children, but not very friendly towards other dogs and strangers. They shed a lot, do not drool, are very easy to groom, have very little potential for gaining weight, and relatively large dogs. They are very easy to train, are very smart, have a high tendency to to bark or howl. They are very playful, intense, and need a lot of exercise." 
      img="https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/German-Shepherd.jpg"
      url="https://en.wikipedia.org/wiki/German_Shepherd"

elsif @user_ans == 15320
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 25320
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 35320
      dogName="German Shepard"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They do not adapt very well to apartment living, are not the best choice for a new owner, can tolerate being alone, can tolerate the cold very well, can tolerate the heat well. They are very friendly towards your family and children, but not very friendly towards other dogs and strangers. They shed a lot, do not drool, are very easy to groom, have very little potential for gaining weight, and relatively large dogs. They are very easy to train, are very smart, have a high tendency to to bark or howl. They are very playful, intense, and need a lot of exercise." 
      img="https://dgicdplf3pvka.cloudfront.net/images/dogbreeds/large/German-Shepherd.jpg"
      url="https://en.wikipedia.org/wiki/German_Shepherd"

elsif @user_ans == 13130
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

elsif @user_ans == 23130
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 33130
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 14130
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 24130
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 34130
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 15130
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 25130
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 35130
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 13230
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

elsif @user_ans == 23230
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 33230
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 14230
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 24230
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 34230
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 15230
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 25230
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 35230
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 13330
      dogName="Cockapoo"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They adapt well to living to apartment living, are very good choices for new owners, can tolerate being alone, and can tolerate the cold and heat very well. They are very friendly towards everybody. They do not shed, do not drool, are easy to groom, have potential to gain weight, and not big dogs. They can be trained, are very smart, and can bark and howl. They have lots of energy, need lots of exercise, and are extremely playful." 
      img="http://www.ozcockapoos.net/ginger3.JPG"
      url="https://en.wikipedia.org/wiki/Cockapoo"

elsif @user_ans == 23330
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 33330
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 14330
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 24330
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 34330
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 15330
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 25330
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

elsif @user_ans == 35330
      dogName="Cavalier King Charles"
      welcome ="Thank you for taking our quiz, #{@user_name}. <br> <b> #{dogName}</a> </b> is the dog we've decided will works best for you!"
      descrip="They can adapt very well to apartment living, are very good for new owners, but can not tolerate being alone very well. They can tolerate the cold well but the not the best and the same with the heat. They are very friendly towards everyone, including other dogs. They shed a little bit but not much, don’t drool, are relatively easy to groom, have potential to gain weight, and are not large dogs. They are pretty easy to train, have a relatively high energy level, need plenty of exercise, and are extremely playful." 
      img="https://www.omlet.us/images/cache/1024/682/Dog-Cavalier_King_Charles_Spaniel-Three_little_Cavalier_King_Charles_Spaniel's_sitting_patiently.jpg"
      url="https://en.wikipedia.org/wiki/Cavalier_King_Charles_Spaniel"

    else
      welcome ="In order to get a solution you must complete all the answers to the test"
      img="https://blog.sqlauthority.com/i/a/errorstop.png"
    end
    @results=[welcome, dogName, descrip, img, url]
    erb :answer
  end

end


# end
