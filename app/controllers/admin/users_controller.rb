class Admin::UsersController < Admin::BaseController

  def index
    @users = User.all
  end

  def show
  end

  def edit
  end

end
