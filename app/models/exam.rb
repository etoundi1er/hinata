class Exam < ActiveRecord::Base
  validates :title, :exam_date, :exam_category_id, presence: :true
  belongs_to :exam_category
  belongs_to :group
  belongs_to :course
  has_many   :grades
  has_many   :students,  :primary_key => :group,
                         :foreign_key => :group
end
