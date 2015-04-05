class AddDefaultScoreToGrades < ActiveRecord::Migration
  def change
    change_column :grades, :score, :float, :default => 0
  end
end