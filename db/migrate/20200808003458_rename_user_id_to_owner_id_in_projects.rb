class RenameUserIdToOwnerIdInProjects < ActiveRecord::Migration[6.0]
  def change
    rename_column :projects, :user_id, :owner_id
  end
end
