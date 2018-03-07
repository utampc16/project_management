class AddAvatarToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :meetings, :avatar, :string
  end
end
