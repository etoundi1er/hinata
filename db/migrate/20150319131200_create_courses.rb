class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :course_code
      t.integer :group_id
      t.id :course_category

      t.timestamps null: false
    end
  end
end
