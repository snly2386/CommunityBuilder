class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :Users, :name, :string
  end
end
