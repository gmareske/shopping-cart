class AddUserToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :recipes, :users, column: :user_id
  end
end
