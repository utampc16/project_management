class Timesheet < ApplicationRecord
	belongs_to :project
	belongs_to :user
	mount_uploader :avatar, AvatarUploader
end
