class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.integer :assign_task_id

      t.timestamps
    end
  end
end
