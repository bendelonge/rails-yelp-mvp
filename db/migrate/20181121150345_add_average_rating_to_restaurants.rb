class AddAverageRatingToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :average_rating, :float
  end
end
