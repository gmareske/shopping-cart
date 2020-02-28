class AddRecipeAndIngredientToMeasurement < ActiveRecord::Migration[5.2]
  def change
    add_column :measurements, :recipe_id, :integer
    add_column :measurements, :ingredient_id, :integer
  end
end
