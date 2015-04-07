class Lesson < ActiveRecord::Base
  validates :lesson_title, :lesson_start_date, :lesson_end_date, presence: true
  belongs_to :chapter
end
