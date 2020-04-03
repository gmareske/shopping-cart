class GroceryListController < ApplicationController
  def show
    render html: params.to_s
  end

  def generate
    params.permit(recipe_list: [])
    recipe_ids = params[:recipe_list].keys.map {|k| k.to_i }
    @measurements = recipe_ids.collect {|id| Measurement.where(recipe_id: id)}.flatten

  end
end
