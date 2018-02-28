class RemoveColumnFromAssignTasks < ActiveRecord::Migration[5.1]
  def change
    remove_column :assign_tasks, :user_project_id, :integer
  end
end
