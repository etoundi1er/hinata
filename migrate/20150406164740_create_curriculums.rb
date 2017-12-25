class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|
      t.string :cur_title

      t.timestamps null: false
    end
  end
end
