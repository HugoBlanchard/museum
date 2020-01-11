class AddReferencesToMasterpieces < ActiveRecord::Migration[5.2]
  def change
    add_reference :masterpieces, :country, foreign_key: true
  end
end
