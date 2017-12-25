class AddStatusToAttendance < ActiveRecord::Migration
  def change
    add_column :attendances, :status, :boolean, default: true, null: false
  end
end
