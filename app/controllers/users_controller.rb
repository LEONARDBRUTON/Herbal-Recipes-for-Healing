class UsersController < ApplicationController
    

    get '/users/new' do 
        erb :'/users/account'
    end

    post '/users' do
        # binding.pry

        @user = User.new(username: params[:username],password: params[:password])
         if @user.save
            redirect '/users/login'
         else
            erb :"/users/account"
         end

    
        # if user.save
        #     session[:user_id] = user.id
        #     redirect '/herbal_recipes'
        # else
        #     @error = "ERROR!, Invalid Entry!"
        #     erb :'/users/account'
        # end
    end

    get '/users/:id' do
        @user = User.find(params[:id])
        erb :'/users/creaters'
    end


end
#     get '/users' do 
#         erb :'/users/index'
#     end


#     get '/users/:id' do 
#         erb :'/users/:id'
#     end
# end