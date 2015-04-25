class AddNameToRoles < ActiveRecord::Migration
  def self.up
    def change
      change_table :roles do |t|
        t.string :name

        t.timestamps null: false
      end
    end
  end
end
