class AddUserProjectIdToTimesheets < ActiveRecord::Migration[5.1]
  def change
    add_column :timesheets, :user_project_id, :integer
  end
end
