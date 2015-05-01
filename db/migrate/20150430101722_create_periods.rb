class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.time :start_time
      t.time :end_time
      t.date :weekday
      t.string :period_title

      t.timestamps null: false
    end
  end
end
