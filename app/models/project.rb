class Project < ApplicationRecord
  belongs_to :technology
  has_many :user_projects
  has_many :users, through: :user_projects
  has_many :tasks
  has_many :assign_tasks

  mount_uploader :image, ImageUploader
end
