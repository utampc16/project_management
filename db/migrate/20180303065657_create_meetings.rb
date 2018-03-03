class CreateMeetings < ActiveRecord::Migration[5.1]
  def change
    create_table :meetings do |t|
      t.string :purpose
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
