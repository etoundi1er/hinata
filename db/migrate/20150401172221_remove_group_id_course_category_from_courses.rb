class RemoveGroupIdCourseCategoryFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :group_id, :integer
    remove_column :courses, :course_category, :integer
  end
end
