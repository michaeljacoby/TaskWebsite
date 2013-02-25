require 'spec_helper'

describe "Landing Page contains" do
	it "Visit page" do
		visit root_path
		page.should have_content("Home")
		page.should have_content("About us")
                page.should have_content("Sign up")
	end

end
	
