class AddCurriculumToChapters < ActiveRecord::Migration
  def change
    add_reference :chapters, :curriculum, index: true
    add_foreign_key :chapters, :curriculums
  end
end
