class Course < ActiveRecord::Base
  validates :course_name, :course_code, :group_id, :course_category_id, presence: true
  belongs_to :course_category
  belongs_to :group
#   delegate :students, to: :group
  has_many :exams
  has_many :chapters
  
  def students
    group.students
  end
  
  def to_param
    "#{id}-#{course_name.parameterize}"
  end
end
