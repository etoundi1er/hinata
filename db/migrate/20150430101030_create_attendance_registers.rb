class CreateAttendanceRegisters < ActiveRecord::Migration
  def change
    create_table :attendance_registers do |t|
      t.references :group, index: true
      t.references :period, index: true

      t.timestamps null: false
    end
    add_foreign_key :attendance_registers, :groups
    add_foreign_key :attendance_registers, :periods
  end
end
