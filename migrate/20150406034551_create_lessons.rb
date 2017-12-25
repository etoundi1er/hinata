class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :lesson_title
      t.text :lesson_description
      t.date :lesson_start_date
      t.date :lesson_end_date
      t.string :attachment
      t.references :chapter, index: true

      t.timestamps null: false
    end
    add_foreign_key :lessons, :chapters
  end
end
