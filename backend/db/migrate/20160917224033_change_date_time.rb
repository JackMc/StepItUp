class ChangeDateTime < ActiveRecord::Migration[5.0]
  def change
    remove_column :battles, :info
    add_column :battles, :info, :date
  end
end
