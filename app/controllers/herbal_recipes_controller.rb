

class HerbalRecipesController < ApplicationController

    get '/herbal_recipes' do

         @herbal_recipes = HerbalRecipe.all

        erb :'/herbal_recipes/index'
    end

    get '/herbal_recipes/:id' do
        @herbal_recipe = HerbalRecipe.find(params["id"])
      
       erb :'/herbal_recipes/show'
    end

    #CREATE

        # New
        # make a get request to '/herbal_recipes/new'
        # get '/herbal_recipes/new' do 
        #     erb :'/herbal_recipes/new'

        #end

        # Create
        # make a post request to '/herbal_recipes'
        # post '/herbal_recipes' do 
        #     erb :'herbal_recipes'
        # end

    #READ

        #Index
        #Get request to '/herbal_recipes'

        
         #Show
        #Get request to '/herba_recipe/:id'


        
       

    #UPDATE

        #Edit
        #make a get request to '/herbal_recipes/:id/edit'

        #Update
        #make a patch request to '/herbal_recipes/:id'

    #DESTROY

        #make a delete request to '/herbal_recipes/:id'


end