class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    has_many :user_projects
    has_many :projects, through: :user_projects
    has_many :assign_tasks
    has_many :timesheets
end
