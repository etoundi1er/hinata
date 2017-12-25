class AddGroupToCourses < ActiveRecord::Migration
  def change
    add_reference :courses, :group, index: true
    add_foreign_key :courses, :groups
  end
end
