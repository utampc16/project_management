class ChangeDateColumnToMeetings < ActiveRecord::Migration[5.1]
  def change
		change_column :meetings, :date, :string
  end
end
