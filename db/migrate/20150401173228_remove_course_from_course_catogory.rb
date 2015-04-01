class RemoveCourseFromCourseCatogory < ActiveRecord::Migration
  def change
    remove_column :course_catogories, :course_id, :integer
  end
end
