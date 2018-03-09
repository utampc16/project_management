class AddCompletedToUserProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :user_projects, :completed, :boolean, default: :false
  end
end
