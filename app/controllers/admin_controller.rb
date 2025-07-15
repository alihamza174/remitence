class AdminController < ApplicationController
  before_action :check_admin
  layout "admin"
  
  def index
    # if current_user.admin?
    #   render layout: 'admin'
    # end
  end

  private

  def check_admin
    unless current_user&.admin?
      redirect_to new_user_session_path, alert: 'You must be an admin to access this page.'
    end
  end
end
