class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :venue
      t.date :date

      t.timestamps null: false
    end
  end
end
