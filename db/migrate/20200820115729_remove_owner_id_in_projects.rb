class RemoveOwnerIdInProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :owner_id, :integer
  end
end
