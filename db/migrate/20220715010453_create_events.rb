class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.date :date_event, null: false

      t.timestamps
    end
  end
end
