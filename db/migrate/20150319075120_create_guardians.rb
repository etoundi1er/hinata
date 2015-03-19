class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :first_name
      t.string :last_name
      t.string :relation
      t.string :phone
      t.string :email
      t.string :occupation

      t.timestamps null: false
    end
  end
end
