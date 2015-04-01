class RemoveCourseCategoryIdFromCourses < ActiveRecord::Migration
  def change
    remove_column :courses, :course_category_id, :integer
  end
end
