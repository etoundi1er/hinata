class Course < ActiveRecord::Base
  validates :course_name, :course_code, :group_id, :course_category_id, presence: true
  has_many :students, :through => :groups
  belongs_to :group
  belongs_to :course_category
  has_many :exams
end
