class AddCategoryToEvents < ActiveRecord::Migration[7.0]
  def change
    remove_column :events, :category
    add_column :events, :category, :string
  end
end
