class UserController < ApplicationController
    

    get '/user' do 
        erb :'/user/new'
    end

    post '/user' do 
        erb :'user'
    end


    get '/user' do 
        erb :'/user/index'
    end


    get '/user/:id' do 
        erb :'/user/:id'
    end
end