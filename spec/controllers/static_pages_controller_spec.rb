require 'rails_helper'

RSpec.describe StaticPagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_successful
    end
  end

  describe "GET 'help'" do
    it "returns http success" do
      get 'help'
      response.should be_successful
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_successful
    end
  end

  describe "GET 'random_list'" do
    it "returns https success" do
      get 'random_shopping_list'
      response.should be_successful
    end

    it "should generate a list of random ingredients" do
      get 'random_shopping_list'
      assigns(:random_list).should_not be_nil
    end

    it "should generate a different list every time" do
      get 'random_shopping_list'
      old_arr = Array.new assigns(:random_list)
      # get the page again
      get'random_shopping_list'
      assigns(:random_list).should_not eq(old_arr)
    end

    it "Should render the random_shopping_list template" do
      get 'random_shopping_list'
      response.should render_template 'list'
    end
  end
end
