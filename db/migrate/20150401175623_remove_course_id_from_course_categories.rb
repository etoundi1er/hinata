class RemoveCourseIdFromCourseCategories < ActiveRecord::Migration
  def change
    remove_column :course_categories, :course_id, :integer
  end
end
