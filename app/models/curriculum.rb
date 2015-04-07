class Curriculum < ActiveRecord::Base
  has_many :chapters
  accepts_nested_attributes_for :chapters, allow_destroy: true,
                :reject_if => lambda { |attrs|
                                            attrs.all? { |key, value| value.blank? } 
                                          }

end
