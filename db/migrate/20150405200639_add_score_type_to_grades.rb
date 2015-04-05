class AddScoreTypeToGrades < ActiveRecord::Migration
  def change
    change_column :grades, :score, :integer
  end
end
