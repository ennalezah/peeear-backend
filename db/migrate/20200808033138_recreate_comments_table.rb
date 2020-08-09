class RecreateCommentsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :input
      t.references :user
      t.references :project
      t.timestamps
    end
  end
end
