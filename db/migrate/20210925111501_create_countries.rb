class CreateCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :countries do |t|
      t.integer :code
      t.string :iso_2
      t.string :iso_3
      t.string :name_fr
      t.string :name_en

      t.timestamps
    end
  end
end
