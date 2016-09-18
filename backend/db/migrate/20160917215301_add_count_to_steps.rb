class AddCountToSteps < ActiveRecord::Migration[5.0]
  def change
    add_column :steps, :count, :integer
  end
end
