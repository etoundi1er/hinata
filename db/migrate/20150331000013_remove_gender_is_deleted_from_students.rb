class RemoveGenderIsDeletedFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :gender, :string
    remove_column :students, :is_deleted, :boolean
  end
end
