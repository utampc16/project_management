class AddTaskIdToUserProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :user_projects, :task_id, :integer
  end
end
