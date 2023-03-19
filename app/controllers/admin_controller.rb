class AdminController < ApplicationController
  
  def index
    if current_user.admin?
      render layout: 'admin'
    end
  end
end
