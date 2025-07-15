class RenameRoleColumn < ActiveRecord::Migration[7.0]
  def up
    # Add new integer column
    add_column :users, :role_int, :integer, default: 1, null: false

    # Map string roles to integer values
    User.reset_column_information
    User.find_each do |user|
      case user.role
      when 'super_admin'
        user.update_column(:role_int, 0)
      when 'admin'
        user.update_column(:role_int, 1)
      else
        user.update_column(:role_int, 1) # default to admin if unknown
      end
    end

    # Remove old string column and rename new column
    remove_column :users, :role
    rename_column :users, :role_int, :role
  end
end 