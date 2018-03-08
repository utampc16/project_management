class Timesheet < ApplicationRecord
	belongs_to :user_project
	mount_uploader :avatar, AvatarUploader
end
