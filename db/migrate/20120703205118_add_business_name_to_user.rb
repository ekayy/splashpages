class AddBusinessNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :business_name, :string
  end
end
