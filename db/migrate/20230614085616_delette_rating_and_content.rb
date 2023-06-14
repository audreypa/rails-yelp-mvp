class DeletteRatingAndContent < ActiveRecord::Migration[7.0]
  def change
    remove_column :restaurants, :rating
    remove_column :restaurants, :content
  end
end
