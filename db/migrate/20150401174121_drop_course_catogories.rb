class DropCourseCatogories < ActiveRecord::Migration
  def change
    drop_table :course_catogories
  end
end
