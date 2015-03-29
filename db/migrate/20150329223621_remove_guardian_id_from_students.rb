class RemoveGuardianIdFromStudents < ActiveRecord::Migration
  def change
    remove_column :students, :guardian_id, :integer
  end
end
