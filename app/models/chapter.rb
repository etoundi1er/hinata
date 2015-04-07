class Chapter < ActiveRecord::Base
  belongs_to :curriculum
  has_many :lessons
    accepts_nested_attributes_for :lessons, allow_destroy: true,
                :reject_if => lambda { |attrs|
                                            attrs.all? { |key, value| value.blank? } 
                                          }
  
  def with_blank_lessons(n = 1)
    n.times do
      lessons.build
    end
    self
  end
  
end
