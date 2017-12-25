class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.date :date_of_birth
      t.string :place_of_birth
      t.string :gender
      t.string :phone
      t.string :email
      t.string :group
      t.date :enrollment_date
      t.string :address_line
      t.string :city
      t.string :country
      t.boolean :is_active,            :default => true
      t.boolean :is_deleted,           :default => false
      t.binary :photo_data,            :limit => 16777215
      t.integer :guardian_id

      t.timestamps null: false
    end
  end
end
