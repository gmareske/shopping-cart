class AddRecipeAndIngredientToMeasurement < ActiveRecord::Migration[5.2]
  def change
    add_reference :measurements, :recipe, table: :recipes
    add_reference :measurements, :ingredient, table: :ingredients

    add_foreign_key :measurements, :recipes, column: :recipe_id
    add_foreign_key :measurements, :ingredients, column: :ingredient_id
  end
end
