class CreateConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.references :band, foreign_key: true
      t.references :event, foreign_key: true
      t.integer :q_audience, default: 0
      t.text :description
      t.time :duration

      t.timestamps
    end
  end
end
