class AddCompletedToTimesheets < ActiveRecord::Migration[5.1]
  def change
    add_column :timesheets, :completed, :boolean, default: :false
  end
end
