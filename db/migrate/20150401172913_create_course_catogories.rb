class CreateCourseCatogories < ActiveRecord::Migration
  def change
    create_table :course_catogories do |t|
      t.string :category_name
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :course_catogories, :courses
  end
end
