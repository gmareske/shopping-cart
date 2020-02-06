require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "GET 'static_pages/home'" do
    it "has the text 'Shopping Cart'" do
      visit 'static_pages/home'
      page.should have_content('Shopping Cart')
    end
  end

  describe "GET 'static_pages/help'" do
    it "has the text 'Help'" do
      visit 'static_pages/help'
      page.should have_content('Help')
    end
  end

  describe "GET 'static_pages/about'" do
    it "has the text 'About'" do
      visit 'static_pages/about'
      page.should have_content('About')
    end
  end
  
end
