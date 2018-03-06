class ChangeColumnToMeetings < ActiveRecord::Migration[5.1]
  def change
  	change_column :meetings, :time, :string
  end
end
