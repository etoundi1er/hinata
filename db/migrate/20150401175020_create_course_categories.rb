class CreateCourseCategories < ActiveRecord::Migration
  def change
    create_table :course_categories do |t|
      t.string :cc_name
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :course_categories, :courses
  end
end
