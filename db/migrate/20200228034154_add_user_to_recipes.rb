class AddUserToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :user, table: :users
    add_foreign_key :recipes, :users
  end
end
