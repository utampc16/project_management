class AssignTask < ApplicationRecord
	belongs_to :user_project
	belongs_to :user
	belongs_to :project
	belongs_to :task
end
