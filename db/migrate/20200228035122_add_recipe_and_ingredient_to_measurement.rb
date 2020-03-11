class AddRecipeAndIngredientToMeasurement < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :measurements, :recipes, column: :recipe_id
    add_column :measurements, :ingredients, column: :ingredient_id
  end
end
