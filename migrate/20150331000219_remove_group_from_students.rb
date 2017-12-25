class RemoveGroupFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :group, :string
  end
end
