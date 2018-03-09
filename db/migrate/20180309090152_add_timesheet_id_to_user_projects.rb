class AddTimesheetIdToUserProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :user_projects, :timesheet_id, :integer
  end
end
