class Exam < ActiveRecord::Base
  validates :title, :exam_date, :exam_category_id, presence: :true
  belongs_to :exam_category
  belongs_to :course
  has_many   :grades
end
