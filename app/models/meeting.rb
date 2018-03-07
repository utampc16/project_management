class Meeting < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
end
