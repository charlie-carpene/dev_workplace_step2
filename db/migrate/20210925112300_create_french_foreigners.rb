class CreateFrenchForeigners < ActiveRecord::Migration[6.1]
  def change
    create_table :french_foreigners do |t|
      t.string :country
      t.integer :year
      t.integer :nbr_french

      t.timestamps
    end
  end
end
