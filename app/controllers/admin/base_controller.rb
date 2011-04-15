class Admin::BaseController < ApplicationController

  before_filter :require_admin
  layout "admin"

  def index
  end

  protected

  def require_admin
    unless current_user.try(:admin?)
      render404 and return false
    end
  end

end
