class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :description
      t.datetime :deadline
      t.attachment :image
      t.string :bug_type
      t.string :status
      t.integer :assigned_to

      t.timestamps null: false
    end
  end
end
