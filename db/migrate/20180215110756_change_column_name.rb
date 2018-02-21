class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :projects, :technology, :technology_id
  end
end
