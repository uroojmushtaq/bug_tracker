class CreateProjectManagers < ActiveRecord::Migration
  def change
    create_table :project_managers do |t|
      t.integer :project_id
      t.integer :created_by

      t.timestamps null: false
    end
  end
end
