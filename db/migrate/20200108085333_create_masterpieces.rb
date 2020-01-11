class CreateMasterpieces < ActiveRecord::Migration[5.2]
  def change
    create_table :masterpieces do |t|
      t.string :Name
      t.string :Artist
      t.string :Picture
      t.string :country
      t.text :Description

      t.timestamps
    end
  end
end
