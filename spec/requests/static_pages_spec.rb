require 'spec_helper'

describe "Static pages" do
  
  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit root_path
      page.should have_selector('h1', :text => "Sample App")
    end

    it "should have the right title, I guess" do
      visit root_path
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', :text => "Help")
    end

    it "should have the right title, I guess" do
      visit help_path
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => "About")
    end

    it "should have the right title, I guess" do
      visit about_path
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | About")
    end
  end

  describe "Contact Page" do
    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => "Contact Us")
    end

    it "should have the right title, probably" do
      visit contact_path
      page.should have_selector('title',
                                :text => "Ruby on Rails Tutorial Sample App | Contact Us")
    end
  end

end
