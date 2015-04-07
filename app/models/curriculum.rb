class Curriculum < ActiveRecord::Base
  has_many :chapters
  has_many :lessons
  accepts_nested_attributes_for :chapters, :lessons, allow_destroy: true,
                :reject_if => lambda { |attrs|
                                            attrs.all? { |key, value| value.blank? } 
                                          }

end
