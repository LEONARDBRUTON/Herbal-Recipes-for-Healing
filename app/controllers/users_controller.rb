class UsersController < ApplicationController
    

    get '/account' do 
        erb :'/users/account'
    end

    post '/account' do
        user = User.new(params)
        if username.empty? || email.empty? || password.empty?
            @error = "ERROR! You must enter text in all fields to submit!!" 
            erb :'/users/account'
        
        else
            user.save
            session[:user_id] = user_id
            redirect "/herbal_recipes"
        end

    end

end
#     get '/users' do 
#         erb :'/users/index'
#     end


#     get '/users/:id' do 
#         erb :'/users/:id'
#     end
# end