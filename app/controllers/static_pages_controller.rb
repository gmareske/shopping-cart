class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def random_shopping_list
    # get 1-10 ingredients from the database
    #@random_list  = Ingredient.all.map{|i| i.name}.shuffle.take(rand(1..10))
    # then for each ingredient we have, associate it with a random measurement
    #@measurement_list = @random_list.map{|x| Measurement.all.shuffle.first.amount}

    # get 1-10 random measurements from the database
    @measurements = Measurement.all.shuffle.take(rand(1..10))

    render 'list'
  end
end
