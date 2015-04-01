class FamilyMember < ActiveRecord::Base
  belongs_to :guardian
  belongs_to :student
#   accepts_nested_attributes_for :student
end
