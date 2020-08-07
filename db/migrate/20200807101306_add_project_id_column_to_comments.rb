class AddProjectIdColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :project_id, :integer
  end
end
