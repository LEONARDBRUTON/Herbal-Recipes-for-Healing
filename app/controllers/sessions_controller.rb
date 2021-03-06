class SessionsController < ApplicationController
    get '/login' do 
        erb :'/users/login'
    end

    post '/login' do 
      if params['username'].empty? || params['password'].empty?
        @error = 'ERROR!, All fields required!'
        erb :'/users/login'
      else
            user = User.find_by(username: params['username']) 
                if  user && user.authenicate(password: params['password'])
                    session[:user_id] = user.id 
                    redirect "/herbal_recipes"
                else
                    @error = 'Error! Account not found!'
                    erb :'/users/login'
                end
        end
    end

    get '/logout' do
        session.clear
        redirect '/'
    end



end