class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def random_shopping_list
    possible_ingredients = ["onion",
                            "bread",
                            "cinnamon",
                            "green apple",
                            "yogurt",
                            "milk",
                            "chocolate",
                            "flour",
                            "olive oil",
                            "strawberries",
                            "nutmeg"] 
    @random_list  = possible_ingredients.shuffle
      .take(rand(possible_ingredients.length))
    render 'list'
  end
end
