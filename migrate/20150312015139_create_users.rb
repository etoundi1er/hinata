class CreateUsers < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :first_name
            t.string :last_name
            t.string :username
            t.date :date_of_birth
            t.string :gender
            t.string :address_line
            t.string :city
            t.string :email
            t.string :phone

            t.timestamps null: false
        end
    end
end
