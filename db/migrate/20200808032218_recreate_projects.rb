class RecreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :difficulty
      t.references :owner

      t.timestamps
    end
  end
end
