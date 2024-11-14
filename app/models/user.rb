class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
     
  Role = %w(super_admin admin manager student )

  def super_admin?
    role=="super_admin"
  end

  def admin?
    role=="admin"
  end

  def manager?
    role=="manager"
  end

  def user?
    role=="student"
  end

end
