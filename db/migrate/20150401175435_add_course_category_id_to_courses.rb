class AddCourseCategoryIdToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :course_category, index: true
    add_foreign_key :courses, :course_categories
  end
end
