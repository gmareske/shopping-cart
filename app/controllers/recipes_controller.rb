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
    @recipe = Recipe.new(params[:recipe].permit(:title,:user_id,:text))

    ingredient_data = params.require(:recipe).permit(ingredient_names: {}, ingredient_quantities: {})
    ingredients_input = {}

    ingredient_data[:ingredient_names].each do |nk,nv|
      ingredients_input[nk] = nv
    end
    ingredient_data[:ingredient_quantities].each do |qk,qv|
      ingredients_input[qk] = ingredients_input[qk].merge(qv).to_hash
    end

    puts ingredients_input
    
    ingredients_input.each do |k,data|
      puts data
      i_name = data["name"].strip.downcase
      if Ingredient.find_by name: i_name
        i = Ingredient.find_by name: i_name
      else
        i = Ingredient.create name: i_name
      end
      m = Measurement.create(amount: data["quantity"].strip.downcase)
      m.ingredient = i
      m.recipe = @recipe
      m.save
    end
    
    if @recipe.save
      # successful
      redirect_to action: 'index'
    else
      redirect_to action: 'new'
    end

  end
end
