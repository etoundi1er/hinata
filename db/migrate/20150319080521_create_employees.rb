class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :employee_category
      t.string :employee_level
      t.string :experience_years
      t.string :employee_qualification
      t.string :email
      t.string :phone
      t.string :address_line
      t.string :city
      t.date :start_date

      t.timestamps null: false
    end
  end
end
