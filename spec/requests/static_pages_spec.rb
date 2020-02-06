require 'rails_helper'

RSpec.describe "StaticPages", type: :request do

  describe "GET 'static_pages/home'" do
    it "has the text 'Shopping Cart'" do
      visit 'static_pages/home'
      page.should have_content('Shopping Cart')
    end
  end
  
end
