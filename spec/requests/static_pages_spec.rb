require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      expect(page).to have_content("Sample App")
    end
    
    it "should have the base title" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      expect(page).to have_title("Ruby On Rails Tutorial Sample App")
    end


    it "should have the custom title" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path 
      expect(page).to have_content('Help')
    end
    it "should have the right title" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit help_path
      expect(page).to have_content("Help")
    end
  end

  describe "About page" do
    it "should have the content 'About us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit about_path
      expect(page).to have_content('About us')
    end
    it "should have the right title" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit about_path
      expect(page).to have_content("About")
    end
  end

  describe "Contact page" do

    it "should hava the content 'Contact'"do
     visit contact_path
     expect(page).to have_title("Ruby")
   end
 end





end
