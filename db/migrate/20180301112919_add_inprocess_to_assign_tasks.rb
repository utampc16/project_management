class AddInprocessToAssignTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :assign_tasks, :inprocess, :boolean, default: :false
  end
end
