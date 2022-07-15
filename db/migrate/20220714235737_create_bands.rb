class CreateBands < ActiveRecord::Migration[5.2]
  def change
    create_table :bands do |t|
      t.integer :n_menbers, default: 0
      t.date :date_debut
      t.integer :type_band, default: 0
      t.string :name

      t.timestamps
    end
  end
end
