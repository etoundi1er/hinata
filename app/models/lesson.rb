class Lesson < ActiveRecord::Base
#   validates :lesson_title, :lesson_start_date, :lesson_end_date, presence: true
  belongs_to :chapter
  
  def to_param
    "#{id}-#{lesson_title.parameterize}"
  end
end
