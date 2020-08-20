class AddUserInfoToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :first_name, :string
    add_column :projects, :last_name, :string
    add_column :projects, :email, :string
  end
end
