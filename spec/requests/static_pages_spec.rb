require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'W Y associates'" do
      visit root_path
      page.should have_selector('h4', :text => 'W Y associates')
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title',
                        :text => "W Y associates")
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "About page" do

    it "should have the h1 'About Us'" do
      visit about_path
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_selector('title',
                    :text => "#{base_title} | About Us")
    end
  end

end