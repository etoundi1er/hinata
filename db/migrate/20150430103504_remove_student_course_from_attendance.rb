class RemoveStudentCourseFromAttendance < ActiveRecord::Migration
  def change
    remove_column :attendances, :student_id, :integer
    remove_column :attendances, :course_id, :integer
    remove_column :attendances, :group_id, :integer
    remove_column :attendances, :employee_id, :integer
    remove_column :attendances, :taken_at, :date
  end
end
