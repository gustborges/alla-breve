class AddHighlightToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :highlight, :boolean, default: false
  end
end
