class RemovePhoneFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :phone, :string
  end
end
