class RemoveArtistics < ActiveRecord::Migration[5.2]
  def change
  	drop_table :artistics
  	drop_table :odyssees
  end
end
