class AddCompletedToAssignTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :assign_tasks, :completed, :boolean, default: :false
  end
end
