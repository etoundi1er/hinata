module GradesHelper
  
  def group_student_list(group_id)
    @student_list = Student.where(group_id: group_id).where.not(score: nil)
  end
  
end
