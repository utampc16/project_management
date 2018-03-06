class CreateIssues < ActiveRecord::Migration[5.1]
  def change
    create_table :issues do |t|
      t.string :Issue
      t.integer :project_id

      t.timestamps
    end
  end
end
