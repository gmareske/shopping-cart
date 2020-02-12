require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "Home page" do
    it "has the text 'Shopping Cart'" do
      visit home_path
      page.should have_content('Shopping Cart')
    end
    
  end

  describe "About page" do
    it "has the text 'About'" do
      visit about_path
      page.should have_content('About')
    end
  end

  describe "Help page" do
    it "has the text 'Help'" do
      visit help_path
      page.should have_content('Help')
    end
  end
end
