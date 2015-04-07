class Chapter < ActiveRecord::Base
  belongs_to :curriculum
  has_many :lessons
  accepts_nested_attributes_for :lessons, allow_destroy: true
end
