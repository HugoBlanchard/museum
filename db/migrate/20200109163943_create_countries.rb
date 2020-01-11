class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.string :country
      t.references :masterpiece, foreign_key: true

      t.timestamps
    end
  end
end
