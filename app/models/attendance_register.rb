class AttendanceRegister < ActiveRecord::Base
  belongs_to :group
  belongs_to :period
  has_many   :attendances, :dependent => :destroy
  accepts_nested_attributes_for  :attendances
  
end
