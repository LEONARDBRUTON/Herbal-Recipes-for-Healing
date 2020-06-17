class HerbalRecipesController < ApplicationController

    #CREATE

        # New
        # make a get request to '/herbal_recipes/new'
        get '/herbal_recipes/new' do 
            erb :'/herbal_recipes/new'

        end

        # Create
        # make a post request to '/herbal_recipes'
        post '/herbal_recipes' do 
            erb :'herbal_recipes'
        end

    #READ

        #Index
        #Get request to '/herbal_recipes'

        get '/herbal_recipes/index' do
             @herbal_recipes = HerbalRecipes.all

            erb :'/herbal_recipes/index'
        end

         #Show
        #Get request to '/herba_recipe/:id'


        get '/herbal_recipes/:id' do
             @herbal_recipe = HerbalRecipe.find_by(:id)

            erb :'/herbal_recipes/show'
        end
       

    #UPDATE

        #Edit
        #make a get request to '/herbal_recipes/:id/edit'

        #Update
        #make a patch request to '/herbal_recipes/:id'

    #DESTROY

        #make a delete request to '/herbal_recipes/:id'


end