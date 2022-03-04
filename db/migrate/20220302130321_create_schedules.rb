class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :startday
      t.date :endday
      t.boolean :allday
      t.string :memo

      t.timestamps
    end
  end
end
