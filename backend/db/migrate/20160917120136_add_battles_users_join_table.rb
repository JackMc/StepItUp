class AddBattlesUsersJoinTable < ActiveRecord::Migration[5.0]
  def self.up
  create_table :battles_users, :id => false do |t|
    t.integer :user_id
    t.integer :battle_id
  end
end

def self.down
  drop_table :battles_users
end
end
