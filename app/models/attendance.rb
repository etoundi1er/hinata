class Attendance < ActiveRecord::Base
  belongs_to :student
#   belongs_to :group
  belongs_to :attendance_register
  
  def show_status
    if status
      "Present"
    else
      "Absent"
    end
  end
  
end
