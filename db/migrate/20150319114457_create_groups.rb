class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_name
      t.string :group_code
      t.string :room

      t.timestamps null: false
    end
  end
end
