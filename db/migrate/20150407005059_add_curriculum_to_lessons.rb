class AddCurriculumToLessons < ActiveRecord::Migration
  def change
    add_reference :lessons, :curriculum, index: true
    add_foreign_key :lessons, :curriculums
  end
end
