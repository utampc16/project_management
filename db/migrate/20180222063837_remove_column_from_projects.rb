class RemoveColumnFromProjects < ActiveRecord::Migration[5.1]
  def change
    remove_column :projects, :task_id, :string
  end
end
