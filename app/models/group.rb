class Group < ActiveRecord::Base
  validates :group_name, :group_code, presence: true
  has_many :students
  has_many :courses
  has_many :exams
end
