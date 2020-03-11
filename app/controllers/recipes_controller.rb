class RecipesController < ApplicationController
  def index
    default_id = User.find(1).id
    recipes_list = []
    # find all recipes that match the default user id
    # add them to the return result id
    @recipes = Recipe.where(user_id=default_id).find_each do |r|
      recipes_list.append(r)
    end
  end
  
  def show
  end
  
  def new
  end

end
