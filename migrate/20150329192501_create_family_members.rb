class CreateFamilyMembers < ActiveRecord::Migration
  def change
    create_table :family_members do |t|
      t.references :guardian, index: true
      t.references :student, index: true

      t.timestamps null: false
    end
    add_foreign_key :family_members, :guardians
    add_foreign_key :family_members, :students
  end
end
