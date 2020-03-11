class AddTextToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :text, :string
  end
end
