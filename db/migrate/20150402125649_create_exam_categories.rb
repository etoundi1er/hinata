class CreateExamCategories < ActiveRecord::Migration
  def change
    create_table :exam_categories do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
