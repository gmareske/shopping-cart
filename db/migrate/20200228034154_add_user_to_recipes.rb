class AddUserToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :recipes, :users
  end
end
