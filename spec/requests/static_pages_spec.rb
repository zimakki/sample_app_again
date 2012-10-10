require 'spec_helper'

describe "StaticPages" do

  describe "Help page" do

    before do
      visit '/static_pages/help'
    end

    it "should have the content 'Help'" do
      page.should have_selector('h1', text: :'Help')
    end

    it "should have the right title" do
      page.should have_selector('title', text: :'Ruby on Rails Tutorial Sample All | Help')
    end

  end
  

  describe "Home Page" do

    before do
      visit '/static_pages/home'
    end

    it "should have the content 'Sample App'" do
      page.should have_selector('h1', text: :'Sample App')
    end

    it "should have the right title" do
      page.should have_selector('title', text: :'Ruby on Rails Tutorial Sample All | Home')
    end

  end

  describe "About page" do

    before do
      visit '/static_pages/about'
    end

    it "should have the content 'About Us'" do
      page.should have_selector('h1', text: :'About Us')
    end

    it "should have the right title" do
      page.should have_selector('title', text: :'Ruby on Rails Tutorial Sample All | About')
    end

  end

  describe "Contact page" do

    before do
      visit '/static_pages/contact'
    end

    it "should have the content 'Contact Us'" do
      page.should have_selector('h1', text: :'Contact Us')
    end

    it "should have the right title" do
      page.should have_selector('title', text: :'Ruby on Rails Tutorial Sample All | Contact Us')
    end

  end

end

