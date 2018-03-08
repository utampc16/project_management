class AddAvatarToTimesheets < ActiveRecord::Migration[5.1]
  def change
    add_column :timesheets, :avatar, :string
  end
end
