

class HerbalRecipesController < ApplicationController
        #CREATE 
        #you can create a new recipe '/herbal_recipes/new'
        # make a post request to '/herbal_recipes'

    get '/herbal_recipes/new' do 
            erb :'/herbal_recipes/new'

    end

    post '/herbal_recipes' do 
        herbal_recipes = HerbalRecipe.new(params)
           if !herbal_recipes.title.empty? && !herbal_recipes.herb.empty? && !herbal_recipes.ingredents.empty? && !herbal_recipes.instructions.empty?
              herbal_recipes.save
              redirect'/herbal_recipes'
            else
              @error = "ERROR! Please enter text in all fields to submit!!"
              erb :'/herbal_recipes/new'
           end
    end

        #READ
        #Index
        #Get request to '/herbal_recipes'

         #Show
        #Get request to '/herba_recipe/:id'

    get '/herbal_recipes' do

         @herbal_recipe = HerbalRecipe.all.reverse

            erb :'/herbal_recipes/index'
    end

    get '/herbal_recipes/:id' do
        @herbal_recipe = HerbalRecipe.find(params[:id])
      
            erb :'/herbal_recipes/show'
    end

        # UPDATE
            #     Edit
            #     make a get request to '/herbal_recipes/:id/edit'

            #     Update
            #     make a patch request to '/herbal_recipes/:id'

    get '/herbal_recipes/:id/edit' do
        @herbal_recipe = HerbalRecipe.find(params[:id])

            erb :'/herbal_recipes/edit'
    end

    patch '/herbal_recipes/:id' do
        @herbal_recipe = HerbalRecipe.find(params[:id])

            if !params["herbal_recipe"]["title"].empty? && !params["herbal_recipe"]["herb"].empty? && !params["herbal_recipe"]["ingredents"].empty? && !params["instructions"].empty?
                @herbal_recipes.update(params["herbal_recipe"])
                redirect'/herbal_recipes/#{params[:id]}'
            else
                @error = "ERROR! Please enter text in all fields to submit!!"
                erb :'/herbal_recipes/edit'
            end

        #herbal_recipe.update(title: params["title"], herb: params["herb"], ingredents: params["ingredents"], instructions: params["instructions"])
        #redirect '/herbal_recipes'
        
    end
end





            #DESTROY

                #make a delete request to '/herbal_recipes/:id'


