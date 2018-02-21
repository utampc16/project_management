class Project < ApplicationRecord
  belongs_to :technology
  has_many :user_projects
  has_many :users, through: :user_projects

  mount_uploader :image, ImageUploader
end
