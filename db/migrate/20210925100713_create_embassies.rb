class CreateEmbassies < ActiveRecord::Migration[6.1]
  def change
    create_table :embassies do |t|
      t.string :type_of_embassy
      t.string :country
      t.float :latitude
      t.float :longitude
      t.string :coordinates

      t.timestamps
    end
  end
end
