class AddTypeToBattles < ActiveRecord::Migration[5.0]
  def change
    add_column :battles, :type, :string
    add_column :battles, :info, :string

  end
end
