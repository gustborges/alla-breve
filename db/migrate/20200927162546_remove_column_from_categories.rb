class RemoveColumnFromCategories < ActiveRecord::Migration[6.0]
  def change
    remove_column :categories, :post_id
  end
end
