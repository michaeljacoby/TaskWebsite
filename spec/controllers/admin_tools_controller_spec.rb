require 'spec_helper'

describe AdminToolsController do

  describe "GET 'UserView'" do
    it "returns http success" do
      get 'UserView'
      response.should be_success
    end
  end

  describe "GET 'UserEdit'" do
    it "returns http success" do
      get 'UserEdit'
      response.should be_success
    end
  end

end
