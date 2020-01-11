class RemoveColumnFromMasterpiece < ActiveRecord::Migration[5.2]
  def change
  	remove_column :masterpieces, :country
  end
end
