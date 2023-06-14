class UpdateDb < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :rating
    add_column :reviews, :rating, :integer
  end
end
