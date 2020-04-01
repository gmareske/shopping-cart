class RecipesController < ApplicationController
  def index
    default_user = User.find(1)
    recipes_list = []

    # find all recipes that match the default user id
    # add them to the return result id
    # these are public recipes that everyone should be able to see
    Recipe.where(user: default_user).find_each do |r|
      recipes_list.append(r)
    end
    @recipes = recipes_list
  end
  
  def show
    @recipe = Recipe.find(params[:id])
    @measurements = @recipe.measurements
    @user = @recipe.user
  end
  
  def new
    @user_options = User.all.map{ |u| [u.name, u.id]}
    @recipe = Recipe.new
  end

  def create
    puts params[:recipe]
    @recipe = Recipe.new(params[:recipe].permit(:title,:user_id,:text))
    if @recipe.save
      # successful
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end
  end
end
