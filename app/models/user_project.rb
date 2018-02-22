class UserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
  belongs_to :assign_task
end
