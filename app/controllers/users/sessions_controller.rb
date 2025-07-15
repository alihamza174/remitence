class Users::SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    if resource.super_admin?
      superadmin_root_path
    elsif resource.admin?
      admin_root_path
    else
      root_path
    end
  end
end 