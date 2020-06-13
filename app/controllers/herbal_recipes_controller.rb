class HerbalRecipesController < ApplicationController

    #CREATE

        # New
        # make a get request to '/herbal_recipes/new'

        # Create
        # make a post request to '/herbal_recipes'


    #READ

        #Index
        #Get request to '/herbal_recipes'

        get '/herbal_recipes' do 
            erb :'/herbal_recipes/index'
        end

         #Show
        #Get request to '/herba_recipes/:id'


        get '/herbal_recipes' do 
            erb :'/herbal_recipes/:id'
        end
       

    #UPDATE

        #Edit
        #make a get request to '/herbal_recipes/:id/edit'

        #Update
        #make a patch request to '/herbal_recipes/:id'

    #DESTROY

        #make a delete request to '/herbal_recipes/:id'


end