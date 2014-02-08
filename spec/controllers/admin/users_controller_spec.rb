require 'spec_helper'

describe Admin::UsersController do

  let(:user) { mock_model(User) }

  before do
    controller.stub(:current_user).and_return(user)

    user.should_receive(:admin?).and_return(true)
  end

  describe "GET 'index'" do

    it "assigns all users as @users" do
      User.stub_chain(:search, :result, :order, :references, :page).and_return([user])

      get :index
      assigns[:users].should eql([user])
    end

  end

  describe "GET 'show'" do

    before do
      User.should_receive(:find).and_return(user)
    end

    it "assigns requested user as @user" do
      get 'show', :id => user.id

      assigns[:user].should eql(user)
    end

    it "renders 'show' template" do
      get 'show', :id => user.id

      response.should render_template("show")
    end

  end

  describe "GET 'edit'" do

    before do
      User.should_receive(:find).and_return(user)
    end

    it "assigns requested user as @user" do
      get 'edit', :id => user.id

      assigns[:user].should eql(user)
    end

    it "renders 'edit' template" do
      get 'edit', :id => user.id

      response.should render_template("edit")
    end

  end

  describe "POST 'update'" do

    before do
      User.should_receive(:find).and_return(user)
    end

    context "update successful" do

      before(:each) do
        user.stub(:update_attributes).and_return(true)
      end

      it "redirects to users list" do
        post "update", :id => user.id, :user => { :email => "new@example.com" }

        response.should redirect_to(admin_users_path)
      end

      it "sets notice on successful update" do
        post "update", :id => user.id, :user => { :email => "new@example.com" }

        flash[:notice].should_not be_nil
      end

    end

    context "update failed" do

      before(:each) do
        user.stub(:update_attributes).and_return(false)
      end

      it "renders 'edit' template" do
        post "update", :id => user.id, :user => { :email => "new@example.com" }

        response.should render_template("edit")
      end

    end

  end

  describe "POST 'destroy'" do

    before do
      User.should_receive(:find).and_return(user)
    end

    it "redirects to users list" do
      delete "destroy", :id => user.id

      response.should redirect_to(admin_users_path)
      flash[:notice].should_not be_nil
    end

    it "sets notice on successful destroy" do
      delete 'destroy', :id => user.id

      flash[:notice].should_not be_nil
    end

  end

end
