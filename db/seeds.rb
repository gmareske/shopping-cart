default_user = 'default'

User.create(name: default_user, email: 'gmareske@gmail.com')

initial_recipes = [{name: 'Peanut Butter & Jelly Sandwich',
                   ingredients: {
                     'peanut butter': '1 tbsp',
                     'strawberry jelly': '1 tbsp',
                     'bread': '2 slices'
                   }},
                   {name: 'Pasta Aglio e Olio',
                    ingredients: {
                      'olive oil': '1/3 cup',
                      'garlic': '3 cloves',
                      'pasta': '3/4 lb',
                      'black pepper': '',
                      'crushed red pepper': '',
                    }},
                   {name: 'Vegetable Stir Fry',
                    ingredients: {
                      'olive oil': '1 tbsp',
                      'sweet potato': '1',
                      'onion': '2',
                      'red pepper': '1',
                      'ginger': '',
                      'garlic': '3 cloves',
                      'orzo': '1/2 lb',
                    }},
                   ]



def create_default_recipe_from_hash(recipe)
  r = Recipe.create(title: recipe[:name])
  r.user = User.find_by name: 'default'
  recipe[:ingredients].each do |i,m|
    if Ingredient.find_by name: i
      ingredient = Ingredient.find_by name: i
    else
      ingredient = Ingredient.create(name: i)
    end
    m = Measurement.create(amount: m)
    m.ingredient = ingredient
    m.recipe = r
    m.save
  end
  r.save
end

initial_recipes.each do |r|
  create_default_recipe_from_hash(r)
end
