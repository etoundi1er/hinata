class AddStudentToAttendance < ActiveRecord::Migration
  def change
    add_reference :attendances, :student, index: true
    add_foreign_key :attendances, :students
    add_reference :attendances, :attendance_register, index: true
    add_foreign_key :attendances, :attendance_registers
    add_column :attendances, :notes, :string
  end
end
