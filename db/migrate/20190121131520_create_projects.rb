class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :project_name
      t.integer :assigned_to
      t.integer :created_by

      t.timestamps null: false
    end
  end
end
