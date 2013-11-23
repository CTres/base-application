class AddToUsers < ActiveRecord::Migration
  def up
  	add_column :users, :account_id, :integer
  end

  def down
  end
end
