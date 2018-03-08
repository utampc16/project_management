class Project < ApplicationRecord
  belongs_to :technology
  has_many :user_projects, dependent: :destroy
  has_many :users, through: :user_projects
  has_many :tasks, dependent: :destroy
  has_many :assign_tasks, dependent: :destroy
  has_many :issues, dependent: :destroy
  

  mount_uploader :image, ImageUploader
end
