class AddNameToGuardians < ActiveRecord::Migration
  def change
    add_column :guardians, :name, :string
  end
end
