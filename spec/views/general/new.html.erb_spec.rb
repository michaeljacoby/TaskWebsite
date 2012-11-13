require 'spec_helper'

describe "Landing Page" do
	it "Visit page" do
		visit root_path
		page.should have_content("Home")
		page.should have_content("About us")
	end


	it "Links seen !user = null" do
		user = FactoryGirl.create(:user)
	end
end
	
