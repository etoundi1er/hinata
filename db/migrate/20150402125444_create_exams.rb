class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :title
      t.text :description
      t.date :exam_date
      t.references :exam_category, index: true
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :exams, :exam_categories
    add_foreign_key :exams, :courses
  end
end
