class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :student_id
      t.integer :course_id
      t.integer :group_id
      t.integer :status
      t.date :taken_at
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
