class AddUserProjectIdToAssignTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :assign_tasks, :user_project_id, :integer
  end
end
