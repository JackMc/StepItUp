class RenameTypeColumn < ActiveRecord::Migration[5.0]
  def change
    remove_column :battles, :type
    add_column :battles, :category, :string 
  end
end
