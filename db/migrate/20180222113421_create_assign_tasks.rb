class CreateAssignTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :assign_tasks do |t|
      t.integer :task_id
      t.integer :project_id

      t.timestamps
    end
  end
end
