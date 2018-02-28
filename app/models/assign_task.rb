class AssignTask < ApplicationRecord
	belongs_to :user
	belongs_to :project
	belongs_to :task
	validates_uniqueness_of :task, :scope => [:user_id,:project_id,:task_id]
end
