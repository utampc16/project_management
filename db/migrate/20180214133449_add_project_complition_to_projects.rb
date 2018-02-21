class AddProjectComplitionToProjects < ActiveRecord::Migration[5.1]
  def change
  	add_column :projects, :start_date, :string
  	add_column :projects, :end_date, :string
  	add_column :projects, :project_cost, :string
  end
end
