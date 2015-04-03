class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.references :student, index: true
      t.references :exam, index: true
      t.integer :score
      t.string :feedback

      t.timestamps null: false
    end
    add_foreign_key :grades, :students
    add_foreign_key :grades, :exams
  end
end
