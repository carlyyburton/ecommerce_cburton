class AddCustomerToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :customers, :users, foreign_key: true
  end
end
