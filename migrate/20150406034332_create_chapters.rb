class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :chapter_title
      t.text :chapter_description
      t.date :chapter_start_date
      t.date :chapter_end_date
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :chapters, :courses
  end
end
