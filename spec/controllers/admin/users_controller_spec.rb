require 'spec_helper'

describe Admin::UsersController do

  let(:user) { mock_model(User) }

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show', :id => user.id
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit', :id => user.id
      response.should be_success
    end
  end

end
